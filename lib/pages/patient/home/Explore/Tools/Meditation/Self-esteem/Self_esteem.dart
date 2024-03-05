import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/common_meditation_start.dart';

import '../../../../../../../common/widgets/MeditationMusicPage.dart';

class SelfEsteem extends StatelessWidget {
  const SelfEsteem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Start(title: 'Self-Esteem Boost', routeName: '/SelfEsteemMed', imagePath: 'assets/MeditationImages/Self-Streem.jpg', text: 'Learn to Love YourSelf',);
  }
}



class SelfSteamMed extends StatefulWidget {
  const SelfSteamMed({super.key});

  @override
  State<SelfSteamMed> createState() => _SelfSteamMedState();
}

class _SelfSteamMedState extends State<SelfSteamMed> {
  @override
  Widget build(BuildContext context) {
    return MeditationMusicPage(title: 'SELF STEAM BOOST', imagePath: 'assets/MeditationImages/Self-Streem.jpg' , Musicpath: "assets/audios/SelfEsteem.mp3");
  }
}