import 'package:afinoz_app/aap_bar.dart';
import 'package:afinoz_app/constants.dart';
import 'package:afinoz_app/pages/blog.dart';
import 'package:afinoz_app/pages/forum.dart';
import 'package:afinoz_app/pages/landing_page.dart';
import 'package:afinoz_app/pages/more.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBar createState() => _MyBottomNavBar();
}

class _MyBottomNavBar extends State<MyBottomNavBar> {

  LandingPage landingPage;

  int _currentIndex = 0;

  final List<Widget> _children = [
    LandingPage(),
    Forum(),
    Blog(),
    More()
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(themeTitle),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.themeColor,
        onTap: onTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text('Forum'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.article),
              title: Text('Blog')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            title: Text('More'),
          )
        ],
      ),
    );
  }
}
