import 'package:afinoz_app/constants.dart';
import 'package:flutter/material.dart';

const String themeTitle = "LOAN MADE EASY";

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  MyAppBar(
    this.title, {
    Key key,
  })  : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        themeTitle,
        style: TextStyle(
          fontSize: 18.0,
          color: MyColors.themeColor,
        ),
      ),
      elevation: 0.0,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: MyColors.themeColor,
        onPressed: () => {
          Navigator.pop(context),
        },
      ),
      actions: <Widget>[
        PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return MenuButtonConstans.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            })
      ],
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }

  void choiceAction(String choice) {
    switch (choice) {
      case 'Settings':
        print('settings pressed');
        break;
      case 'Profile':
        print('profile pressed');
        break;
      case 'Contacts':
        print('contacts pressed');
        break;
      case 'About':
        print('about pressed');
        break;
    }
  }
}
