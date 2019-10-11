// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:lab03/item_add_screen.dart';
import 'package:lab03/pages/home_page.dart';

void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter'),
//        ),
//        body: Center(
//          child: Text('Hello World\n From: cs262-Eteam'),
//        ),
//      ),
//    );
//  }
//}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        title: 'Welcome to eTeam Exchange',
        home: CurrentScreen()
//      title: 'Welcome to Flutter',
//      home: Scaffold(
////        appBar: AppBar(
////
////        ),
//        body: HomePage(),
//      ),
    );
  }
}