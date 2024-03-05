import 'package:flutter/material.dart';

import '../../../../../common/widgets/commonDiscussion.dart';

class Discussion extends StatefulWidget {
  const Discussion({super.key});

  @override
  State<Discussion> createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  @override
  Widget build(BuildContext context) {
    // Removed screenWidth as it is not used in this snippet.
    return Scaffold(
      backgroundColor: const Color(0xFF5f7470),
      body: ListView(
        children: const [
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'Gratitude',
            text2: 'What are you grateful for today? share it here.',
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'Anxiety',
            text2: "Anxiety isn't Fun. This is a safe place",
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'Work Stress',
            text2: 'Vent about work related stress.We can all\nrelate.',
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'Depression',
            text2: "You don't have to navigate it alone.",
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'School Stress',
            text2: 'Is school getting to you. Find support here.',
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'Parenting',
            text2: 'Parenting is stressfull. How are you\nhandling it?',
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'Grief',
            text2: "Loss can feel overwhelming. Let's navigate\nit together",
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'Loneliness',
            text2: "Feeling the lack of connection?Lets talk \nabout it",
            Routename: '',
          ),
          CommonDiscussion(
            imagePath: 'assets/confidence.jpg',
            text: 'HeartBreak',
            text2: 'A gentle space to feel and heal',
            Routename: '',
          ),
        ],
      ),
    );
  }
}
