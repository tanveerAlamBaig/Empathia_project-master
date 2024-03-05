import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Community/community.dart';
import 'Explore/Explore.dart';
import 'Home/home_screen.dart';
import 'Profile/user_profile.dart';


class HomePatient extends StatefulWidget {
  const HomePatient({super.key});

  @override
  State<HomePatient> createState() => _HomePatientState();
}

class _HomePatientState extends State<HomePatient> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const Explore(),
    const Community(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: const Color(0xFF4F6F52),
            activeColor: const Color(0xFF1BC88C),
            iconSize: 30,
            gap: 1,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            padding: const EdgeInsets.all(16.0),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.explore_outlined, text: 'Explore'),
              GButton(icon: Icons.groups, text: 'Community'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
