// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:lab03/pages/home_page.dart';
import 'package:lab03/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                title: Text('All Items'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                title: Text('Books'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                title: Text('Clothing'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                title: Text('Add Item'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                title: Text('Login'),
                onTap: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new LoginPage()),
                  );
                },
              ),

            ],
          ) ,
        ),
      body: HomePage(),
    );
  }
}
