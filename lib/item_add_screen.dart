// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'Welcome to eTeam Exchange',
//        home: CurrentScreen()
//    );
//  }
//}
class CurrentScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    if (0 == 0) {
      return Home();
    }
    return null;
  }
}
class ItemForm extends StatefulWidget{
  @override 
  State<StatefulWidget> createState(){
    return ItemFormState();
  }
}
class ItemFormState extends State<ItemForm> {
  final itemName = TextEditingController();
  final itemDescription = TextEditingController();
  final itemCostString = TextEditingController();
  @override
  Widget build(BuildContext context) => new Scaffold(
      body: Form(child:
      Container(
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color(0xFFA5C672),
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
          ),
        child:Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(children:
          <Widget>[
            Text('Item Name:\t'),
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
          ]),
          Row(children:
          <Widget>[
            Text('Item Description:\t'),
            new Flexible(
              child:TextFormField(
                controller: itemDescription,
                validator: (value) {
                  if (value.isEmpty) return "Please enter a Description";
                  return null;
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
            ),
            ),
            new Container(width: 10,)
          ]),
          Row(children:
          <Widget>[
            Text('Item Cost:\t'),
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
          ]),
          RaisedButton(
            child:Text("Cancel"),
            onPressed: (){
              Navigator.pop(context);
            }
          )
        ])
      ))
    );
}

class Home extends State<CurrentScreen> {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
    body:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Hello World\nFrom: cs262-Eteam'),
          RaisedButton(
            child: Text("New Item Form"),
            onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ItemForm())
              );
            }
          )
        ]
      )
    );
  }
}