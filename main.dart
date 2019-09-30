import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bookstore App'),
        ),
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
                title: Text('Option 1'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                title: Text('Option 2'),
                onTap: (){//fucntion we need
                },
              ),
              ListTile(
                title: Text('Option 3'),
                onTap: (){
                  // function goes here
                },
              ),
              CustomListTile(),

            ],
          ) ,
        ),
      ),

    );
  }
}
