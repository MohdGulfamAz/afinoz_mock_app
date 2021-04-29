import 'package:flutter/material.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOAN MADE EASY',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.indigo[600]
          ),
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.indigo[600],
          onPressed:() {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black87,
              ), onPressed: () {}
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text('forum tab'),
      ),
    );
  }
}
