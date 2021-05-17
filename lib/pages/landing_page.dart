import 'package:afinoz_app/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:afinoz_app/constants.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  final bool isApplied = false;
  bool isSalSalected = false;
  bool isProSalected = false;
  Color colorText;
  double _myValue = 2000;
  double minValue = 2000.0;
  double maxValue = 500000.0;

  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_setStartValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  _setStartValue() {
    if (double.parse(myController.text).toDouble() >= minValue &&
        double.parse(myController.text).toDouble() <= maxValue) {
      setState(() {
        _myValue = double.parse(myController.text).roundToDouble();
      });
    }
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Personal Loan',
                style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Get loans from 2000 to 50 lacs in just few seconds'),
              SizedBox(height: 10),
              Text(
                'How much loan you need',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: 210,
                height: 45,
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/rupee.png'),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(25)),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                          letterSpacing: 1.0),
                      labelText: "Enter amount",
                      fillColor: Colors.white),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: const Offset(
                        3.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                    ), //BoxShadow
                  ],
                ),
              ),
              Slider(
                activeColor: MyColors.themeColor,
                inactiveColor: Colors.white,
                value: _myValue,
                min: minValue,
                max: maxValue,
                label: _myValue.toString(),
                onChanged: (value) {
                  setState(
                    () {
                      _myValue = value;
                      myController.text = value.roundToDouble().toString();
                    },
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('\u{20B9}. 2000'),
                  Text('\u{20B9}. 500000')
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Employment Type ?',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 100,
                      child: Text(
                        'Salaried',
                        style: TextStyle(
                          fontSize: 20,
                          color: isSalSalected ? Colors.white : Colors.grey,
                        ),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSalSalected
                            ? MyColors.themeColor
                            : Colors.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(
                        () {
                          isSalSalected = true;
                          isProSalected = false;
                        },
                      );
                    },
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 130,
                      child: Text(
                        'Professional',
                        style: TextStyle(
                          fontSize: 20,
                          color: isProSalected ? Colors.white : Colors.grey,
                        ),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isProSalected
                            ? MyColors.themeColor
                            : Colors.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(
                        () {
                          isProSalected = true;
                          isSalSalected = false;
                        },
                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 75, right: 75, top: 15),
                child: TextButton(
                  child: Center(
                    child: Text(

                      'APPLY NOW',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        MyColors.themeColor),
                    shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: MyColors.themeColor,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // isApplied = true;
                    Navigator.pushNamed(context, '/personal_loan');
                    Toast.show("Successfully applied!", context,
                        duration: Toast.LENGTH_SHORT,
                        gravity: Toast.BOTTOM);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
