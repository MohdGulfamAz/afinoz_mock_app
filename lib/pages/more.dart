import 'package:flutter/material.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
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
        child: Text('more tab'),
      ),
    );
  }
}
