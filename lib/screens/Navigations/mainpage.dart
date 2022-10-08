// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:museic/screens/Navigations/discover.dart';
import 'package:museic/screens/Navigations/homepage.dart';
import 'package:museic/screens/Navigations/library.dart';
import 'package:museic/screens/Navigations/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  // void _changeNavBar(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }
  
  final List<Widget> pages = [
    Homepage(),
    Discover(),
    Library(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined, size: 26),
          ),
          BottomNavigationBarItem(
            label: "Discover",
            icon: Icon(Icons.travel_explore_outlined),
          ),
          BottomNavigationBarItem(
            label: "Library",
            icon: Icon(Icons.library_music_outlined),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person_outline),
          ),
        ],
        backgroundColor: Color(0xFF104137),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedLabelStyle:
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        unselectedLabelStyle:
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFFB5A00),
        unselectedItemColor: Color(0xFF9E9EA0),
      ),
    );
  }
}
