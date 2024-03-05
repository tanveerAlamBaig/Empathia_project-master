import 'package:flutter/material.dart';

class UnboardingContent {
  String image;
  String title;
  String description;
  Color backgroundColor;

  UnboardingContent({
    required this.image,
    required this.title,
    required this.description,
    required this.backgroundColor,
  });
}

List<UnboardingContent> contentsList = [
  UnboardingContent(
      image: "assets/psych.png",
      title: 'Get Instant Consult From Your Preferred Psychologist',
      description: 'Speak to your preferred psychologist within 1 minute through chat, voice call, video call',
      backgroundColor: Colors.white
  ),
  UnboardingContent(

      image: "assets/article.png",
      title: 'Find Trustworthy Health Information',
      description: 'Get the most accurate information about any disorder from top-class psychologists.\nRead and share top trending articles with your friends',
      backgroundColor: Colors.white

  ),
  UnboardingContent(
      image: "assets/appointment.png",
      title: 'Easy Appointment Scheduling And Fast Payment',
      description: 'You can book appointment from anywhere quickly at your finger tips and get connected',
      backgroundColor: Colors.white

  ),
  UnboardingContent(
      image: "assets/community.png",
      title: 'Join Community And Stay Connected',
      description: 'Share you experiences and bring a change within yourself and round our environment',
      backgroundColor: Colors.white
  ),
];


