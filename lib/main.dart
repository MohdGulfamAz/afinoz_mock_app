import 'package:flutter/material.dart';
import 'package:afinoz_app/pages/landing_page.dart';
import 'package:afinoz_app/pages/forum.dart';
import 'package:afinoz_app/pages/blog.dart';
import 'package:afinoz_app/pages/more.dart';


void main() =>  runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => LandingPage(),
    '/forum' : (context) => Forum(),
    '/blog' : (context) => Blog(),
    '/more' : (context) => More()
   },
));

