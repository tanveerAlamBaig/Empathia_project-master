import 'package:flutter/material.dart';
import 'Discussions/Discussion.dart';
import 'Chat Groups/chatGroups.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentPage =
        _selectedIndex == 0 ? const Discussion() : const ChatGroups();

    return Scaffold(
      backgroundColor: const Color(0xFF5f7470),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5f7470),
        title: const Text(
          'Community',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF7F7F7),
            backgroundColor: Color(0xFF5f7470),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      },
                      child: Text(
                        'DISCUSSION',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          decoration: _selectedIndex == 0
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          decorationThickness: 5.0,
                          decorationColor: _selectedIndex == 0
                              ? const Color(0xFF1BC88C)
                              : Colors.transparent,
                          color: const Color(0xFFF7F7F7), // Set the text color
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      },
                      child: Text(
                        'CHAT GROUPS',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          decoration: _selectedIndex == 1
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          decorationThickness: 5.0,
                          decorationColor: _selectedIndex == 1
                              ? const Color(0xFF1BC88C)
                              : Colors.transparent,
                          color: const Color(0xFFF7F7F7), // Set the text colo
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: currentPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
