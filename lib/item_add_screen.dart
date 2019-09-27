// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to eTeam Exchange',
        home: CurrentScreen()
    );
  }
}
class CurrentScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    if (0 != 0) {
      return Home();
    } else if(1 != null) {
      return ItemForm();
    }
    return null;
  }
}
class Home extends State<CurrentScreen> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: AppBar(
        title: Text('Welcome to Flutter'),
    ),
    body:
      Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Hello World\nFrom: cs262-Eteam'),
        RaisedButton(onPressed:null,child:Text("New Item")),
      ])
    );
  }
}
class ItemForm extends State<CurrentScreen> {
  final itemName = TextEditingController();
  final itemDescription = TextEditingController();
  final itemCostString = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Form(child:
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(children:
          <Widget>[
            new Container(width: 10,),
            Text('Item Name:'),
            new Container(width: 10,),
            new Flexible(
              child:
              TextFormField(
                controller: itemName,
                validator: (value) {
                  if (value.isEmpty) return "Please enter a name";
                  return null;
                },
                keyboardType: TextInputType.text
            ),
            ),
            new Container(width: 10,)
          ]),
          Row(children:
          <Widget>[
            new Container(width: 10,),
            Text('Item Description:'),
            new Container(width: 10,),
            new Flexible(
              child:TextFormField(
                controller: itemDescription,
                validator: (value) {
                  if (value.isEmpty) return "Please enter a Description";
                  return null;
                },
                keyboardType: TextInputType.multiline
            ),
            ),
            new Container(width: 10,)
          ]),
          Row(children:
          <Widget>[
            new Container(width: 10,),
            Text('Item Cost:'),
            new Container(width: 10,),
            new Flexible(child:
              TextFormField(
                controller: itemCostString,
                validator: (value) {
                  if (value.isEmpty) return "Please enter a number";
                  return null;
                },
                keyboardType: TextInputType.number
              )
            ),
            new Container(width: 10,)
          ])
        ])
      )
    );
  }
}
