import 'package:flutter/material.dart';
import 'package:material_search/material_search.dart';
import 'package:lab03/components/summary_card.dart';
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;
import 'package:lab03/types/item.dart';
import 'package:lab03/main.dart';


import 'dart:async';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => new HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Image.asset(
                      'lib/images/calvin.jpg',
                     height: 450,
                      width: 700,
                      alignment: Alignment.center,
                  ),



                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                       'Calvin Market Place',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(backgroundColor: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text('Shopping Made Easier',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: colors.grayBlue),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
