import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('blog tab'),
      ),
    );
  }
}
