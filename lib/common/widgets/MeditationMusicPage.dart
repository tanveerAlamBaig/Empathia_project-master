import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:ui';


class MeditationMusicPage extends StatefulWidget {
  final String title;
  final String imagePath;
  final String Musicpath;

  const MeditationMusicPage({
    super.key,
    required this.title, required this.imagePath, required this.Musicpath,

  });

  @override
  _MeditationMusicPageState createState() => _MeditationMusicPageState();
}

class _MeditationMusicPageState extends State<MeditationMusicPage> {
  // final String Title;
  late AudioPlayer audioPlayer;
  bool isPlaying = false;
  double currentPosition = 0;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioPlayer.positionStream.listen((Duration position) {
      setState(() {
        currentPosition = position.inSeconds.toDouble();
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
          ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black.withAlpha(100), Colors.black.withAlpha(200)],
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                        ),
                        child: Icon(
                          Icons.music_note_outlined,
                          size: 100,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        widget.title,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Slider(
                        value: audioPlayer.duration != null ? currentPosition : 0,
                        min: 0,
                        max: audioPlayer.duration?.inSeconds.toDouble() ?? 0,
                        divisions: audioPlayer.duration?.inSeconds.toInt(),
                        label: '$currentPosition seconds',
                        onChanged: (double value) {
                          audioPlayer.seek(Duration(seconds: value.toInt()));
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              if (isPlaying) {
                                pauseMusic();
                              } else {
                                playMusic(widget.Musicpath);
                              }
                            },
                            child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                          ),
                          FloatingActionButton(
                            onPressed: stopMusic,
                            child: Icon(Icons.stop),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void playMusic(String assetPath) async {
    if (!isPlaying) {
      var audioSource = AudioSource.asset(assetPath);
      await audioPlayer.setAudioSource(audioSource);
      await audioPlayer.seek(Duration(seconds: currentPosition.toInt()));
      audioPlayer.play();
      setState(() {
        isPlaying = true;
      });
      print('Music started playing.');
    }
  }

  void pauseMusic() async {
    var currentPosition = await audioPlayer.position;
    audioPlayer.pause();
    setState(() {
      isPlaying = false;
    });
    print('Music paused at $currentPosition');
  }

  void stopMusic() {
    audioPlayer.stop();
    setState(() {
      isPlaying = false;
    });
    print('Music stopped.');
  }
}
