/*
Home Page - shows header and list of most recent items
 */

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:lab03/components/summary_card.dart';
import 'package:lab03/database/database_service.dart';
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;
import 'package:lab03/pages/search_delegate.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:lab03/types/item.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:lab03/database/database_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //initialize
  final auth = FirebaseAuth.instance;
  final db = DatabaseService();
  
  @override
  Widget build(BuildContext context) {
    // var user = Provider.of<FirebaseUser>(context);
    // bool loggedIn = user!=null; //check if user is logged in
    // globals.testItems.reversed.forEach((item) {
    //   summaryCards.add(SummaryCard(item: item));
    // });

    // return CustomScrollView(
    //   slivers: <Widget>[
    //      SliverAppBar(
    //       actions: <Widget>[
    //         IconButton(
    //           icon: Icon(Icons.search),
    //             onPressed: () {
    //               showSearch(
    //                 context: context,
    //                   delegate: CustomSearchDelegate()
    //     );
    //   },
    // ),
    //       ],
    //       backgroundColor: colors.grayBlue,
    //       pinned: true,
    //       expandedHeight: 250.0,
    //       flexibleSpace: FlexibleSpaceBar(
    //         title: Text(
    //           globals.appName,
    //         ),
    //       ),
    //     ),
    //     SliverList(
    //       delegate: SliverChildBuilderDelegate(
    //         (BuildContext context, int index) {
    //           return Container (
    //             height: globals.testItems.length % 2 == 0 ?
    //               (globals.testItems.length ~/ 2).toDouble() * 250 :
    //               (globals.testItems.length ~/ 2).toDouble() * 250 + 250,
    //             child: GridView.count(
    //               childAspectRatio: .8,
    //               primary: false,
    //               padding: const EdgeInsets.all(20),
    //               crossAxisSpacing: 20,
    //               mainAxisSpacing: 20,
    //               crossAxisCount: 2,
    //               children: summaryCards,
    //             )
    //         },
    //         childCount: 1,
    //       ),
    //     ),
    
        if (Firestore.instance.collection("items").snapshots()!= null){
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            StreamProvider<List<Item>>.value(
              stream: db.streamAllItems(),
              child: ItemsList()
          )
        ]);
        }else {
          return Text("Gathering Data ...");
        }   
  }
}
