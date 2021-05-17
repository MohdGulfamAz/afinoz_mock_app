import 'package:afinoz_app/aap_bar.dart';
import 'package:afinoz_app/bottom_navigation_bar.dart';
import 'package:afinoz_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PersonalLoan extends StatefulWidget {
  const PersonalLoan({Key key}) : super(key: key);

  @override
  _PersonalLoanState createState() => _PersonalLoanState();
}

class _PersonalLoanState extends State<PersonalLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyAppBar(themeTitle),
      backgroundColor: MyColors.scaffoldColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: Container(
                height: 210,
                width: 500,
                child: Card(
                  child: Image(
                    image: AssetImage('assets/personal_loan.png'),
                  ),
                ),
              ),
            ),
            RatingBar.builder(
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Color(0xfffce75f),
              ),
              // onRatingUpdate: (rating) {
              //   print(rating);
              // },
            ),
            Text(
              '4.5/5 based on 1423 reviews',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 60),
              height: 35,
              width: 130,
              decoration: BoxDecoration(
                color: MyColors.themeColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'APPLY NOW',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 30),
              child: Container(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                        'About',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                      child: Text(
                        MyText.aboutText,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(180, 5, 10, 10),
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300],
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 1.1,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        border: Border.all(color: MyColors.themeColor),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'LEARN MORE',
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColors.themeColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
      ),
    );
  }
}
