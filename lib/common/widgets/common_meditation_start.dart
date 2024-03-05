import 'dart:ui';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final String title;
  final String imagePath;
  final String routeName;
  final String text;
  const Start({Key? key, required this.title, required this.imagePath, required this.routeName, required this.text}) : super(key: key);

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
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // This centers the AppBar title
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
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
                        height: 70,
                        alignment: Alignment.center,
                        color: Colors.black, // Set a background color
                        child: Center( // This centers the text inside the container
                          child: Text(
                            text,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white70, // Set a contrasting text color
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, routeName);
                          // Add functionality for the "Start" button
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white), // Background color
                          foregroundColor:
                          MaterialStateProperty.all(Colors.black), // Text color
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                          child: Text('Start'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
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
}
