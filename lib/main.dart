import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab03/pages/home_page.dart';
import 'package:lab03/pages/login_page.dart';

import 'package:lab03/shared/globals.dart' as globals;

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
                decoration: BoxDecoration(
                  color: Color(0xff466081),
                ),
                child: Stack(children: <Widget>[
                  Align(alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                      )
                  ),
                  Text(globals.appName,
                      style: TextStyle(fontSize: 30) ),
                ],)
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

