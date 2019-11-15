/*
Main - provides a framework for the app that includes the app bar containing the menu
 */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab03/pages/edit_item.dart';
import 'package:lab03/pages/home_page.dart';
import 'package:lab03/pages/login_page.dart';

import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {

  List<Widget> menuTabs(BuildContext context) {
    List<Widget> tabs = [
      DrawerHeader(
          decoration: BoxDecoration(
            color: colors.grayBlue,
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
        leading: Icon(Icons.bookmark_border),
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
        leading: Icon(FontAwesomeIcons.tshirt),
        title: Text('Clothing'),
        onTap: (){//fucntion we need
        },
      ),
      ListTile(
        leading: Icon(FontAwesomeIcons.heart),
        title: Text('Favorited Items'),
        onTap: (){//fucntion we need
        },
      ),
      ListTile(
        leading: Icon(Icons.add),
        title: Text('Add Item'),
        onTap: (){
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new ItemForm()),
          );
        },
      ),
      ListTile(
        leading: Icon(FontAwesomeIcons.shirtsinbulk),
        title: Text('My Items'),
        onTap: (){//fucntion we need
        },
      ),
    ];
    
    if (globals.isLoggedIn) {
      tabs.add(
        ListTile(
          leading: Icon(FontAwesomeIcons.userCircle),
          title: Text('Login'),
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new LoginPage()),
            );
          },
        ),
      );
    } else {
      tabs.add(
        ListTile(
          leading: Icon(FontAwesomeIcons.userCircle),
          title: Text('My Account'),
          onTap: (){//fucntion we need
          },
        ),
      );

      tabs.add(
        ListTile(
          leading: Icon(FontAwesomeIcons.doorOpen),
          title: Text('Logout'),
          onTap: (){//fucntion we need
            globals.isLoggedIn = false;
          },
        ),
      );
    }

    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: menuTabs(context)
        ) ,
      ),
      body: HomePage(),
    );
  }
}
