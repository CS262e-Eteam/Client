// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:lab03/pages/home_page.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
//    z    appBar: AppBar(
//
//        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("bookstore",
                    style: TextStyle(fontSize: 30) ),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
              ),


              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('All Items'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.bookOpen),
                title: Text('Books'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.shirtsinbulk),
                title: Text('Clothing'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Add Item'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.userCircle),
                title: Text('Login'),
                onTap: (){
                  // function goes here
                },
              ),


            ],
          ) ,
        ),
        body: HomePage(),
      ),
    );
  }
}