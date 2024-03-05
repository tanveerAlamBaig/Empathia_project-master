import 'package:flutter/material.dart';

class ChatGroups extends StatefulWidget {
  const ChatGroups({super.key});

  @override
  State<ChatGroups> createState() => _ChatGroupsState();
}

class _ChatGroupsState extends State<ChatGroups> {
  @override
  Widget build(BuildContext context) {
    // Removed screenWidth as it is not used in this snippet.
    return Scaffold(
      backgroundColor: const Color(0xFF5f7470),
      body: ListView(),
    );
  }
}
