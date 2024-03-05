import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/common_meditation_start.dart';

import '../../../../../../../common/widgets/MeditationMusicPage.dart';

class RelaxMuscles extends StatelessWidget {
  const RelaxMuscles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Start(title: 'RELAX YOUR MUSCLES', routeName: '/RelaxMuscleMed', imagePath: 'assets/MeditationImages/Self-Streem.jpg', text: 'Learn to Love YourSelf',);
  }
}



class RelaxMuscleMed extends StatefulWidget {
  const RelaxMuscleMed({super.key});

  @override
  State<RelaxMuscleMed> createState() => _RelaxMuscleMedState();
}

class _RelaxMuscleMedState extends State<RelaxMuscleMed> {
  @override
  Widget build(BuildContext context) {
    return MeditationMusicPage(title: 'RELAX YOUR MUSCLES', imagePath: 'assets/MeditationImages/Self-Streem.jpg' , Musicpath: "assets/audios/RelaxMuscles.mp3");
  }
}