import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  bool isSalSalected = false;
  bool isProSalected = false;

  void changedTab(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context,'/');
        break;
      case 1:
        Navigator.pushNamed(context,'/forum');
        break;
      case 2:
        Navigator.pushNamed(context,'/blog');
        break;
      case 3:
        Navigator.pushNamed(context, '/more');
        break;
      default :
        Navigator.pushNamed(context,'/');
    }
  }

  double minVal = 0.0;
  double maxVal = 5000000.0;
  double currentRange = 0.0;
  int currentRange1 = 0;
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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

          onPressed:() => exit(0),
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
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children : <Widget>[
           Text(
              'Personal Loan',
              style: TextStyle(
              fontSize: 28.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
          ),
           SizedBox(height: 10.0),
           Text('Get loans from 2000 to 50 lacs in just few seconds'),
           SizedBox(height: 10.0),
           Text(
             'How much loan you need',
             style: TextStyle(
                 fontSize: 18.0,
                 color: Colors.black87,
                 fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 10.0),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.all(2),
                 child: Container(
                   height: 45,
                   width: 210,
                   decoration: BoxDecoration(
                     color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                       boxShadow: [
                       BoxShadow(
                         color: Colors.grey,
                         offset: Offset(0.0, 1.0), //(x,y)
                         blurRadius: 6.0,
                       ),
                     ],
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: CircleAvatar(
                           backgroundImage: AssetImage('assets/rupee.png'),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 15),
                         child: Text(
                             '$currentRange1',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10)
               ),
               Slider(
                   min: minVal,
                   max: maxVal,
                   value: currentRange,
                   label: currentRange.toString(),
                   onChanged: (value) {
                     print(value);
                     setState(() {
                       label: currentRange.toString();
                       currentRange1 = value.toInt();
                       currentRange = value;
                     });
                   }
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text('\u{20B9} 2000'),
                   Text('\u{20B9} 5000000')
                 ],
               ),
               Padding(
                 padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
               ),
               Text(
                 'Employment Type ?',
                 style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.black87,
                     fontWeight: FontWeight.bold
                 ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
               ),
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
                        ),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSalSalected  ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isSalSalected = true;
                        isProSalected = false;
                      });
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
                        ),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isProSalected  ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isProSalected = true;
                        isSalSalected = false;
                      });
                    },
                  ),
                ],
              ),
               SizedBox(height: 10),
               TextButton(
                 child: Center(
                   child: Text(
                       'APPLY NOW',
                     style: TextStyle(
                       fontSize: 20
                     ),
                   ),
                 ),
                 style: ButtonStyle(
                     foregroundColor: MaterialStateProperty.all<Color>(Colors.indigo[600]),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                           RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(18.0),
                               side: BorderSide(color: Colors.indigo[600])
                           )
                       )
                   ),
                 onPressed: () {
                   Toast.show(
                       "Successfully applied!",
                       context,
                       duration: Toast.LENGTH_SHORT,
                       gravity:  Toast.BOTTOM
                   );
                 },
               )
             ],
           )
         ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: tabIndex,
        iconSize: 30,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            title: Text('Forum'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.block),
              title: Text('Blog')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: Text('More'),
          )
        ],
        onTap: (index) {
          setState(() {
            changedTab(index);
            tabIndex = index;
          });
        },
      ),
    );

  }
}
