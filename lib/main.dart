import 'package:afinoz_app/bottom_navigation_bar.dart';
import 'package:afinoz_app/pages/personal_loan.dart';
import 'package:flutter/material.dart';
import 'package:afinoz_app/pages/landing_page.dart';
import 'package:afinoz_app/pages/forum.dart';
import 'package:afinoz_app/pages/blog.dart';
import 'package:afinoz_app/pages/more.dart';


void main() =>  runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/' : (context) => MyBottomNavBar(),
    '/blog': (context) => Blog(),
    '/forum' : (context) => Forum(),
    '/more' : (context) => More(),
    '/landing_page' : (context) => LandingPage(),
    '/personal_loan' : (context) => PersonalLoan()
  },
));


