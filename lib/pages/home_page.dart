/*
Home Page - shows header and list of most recent items
 */

import 'package:flutter/material.dart';
import 'package:lab03/components/summary_card.dart';
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;
import 'package:lab03/pages/search_delegate.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  String test = " -- loading";

  Future<String> testMethod() async {
    DocumentReference ref = Firestore.instance.collection('test').document('test');
    print("!!! Found document");
    DocumentSnapshot snap = await ref.get();
    print("!!! Found snapshot");
    return "test";
  }

  @override
  Widget build(BuildContext context) {
    print("!!!" + test);
    testMethod();

    List<Widget> summaryCards = [];
    globals.testItems.reversed.forEach((item) {
      summaryCards.add(SummaryCard(item: item, isSeller: false));
    });

    return CustomScrollView(
      slivers: <Widget>[
         SliverAppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(
                    context: context,
                      delegate: CustomSearchDelegate()
        );
      },
    ),
          ],
          backgroundColor: colors.grayBlue,
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              globals.appName,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container (
                height: globals.testItems.length % 2 == 0 ?
                  (globals.testItems.length ~/ 2).toDouble() * 250 :
                  (globals.testItems.length ~/ 2).toDouble() * 250 + 250,
                child: GridView.count(
                  childAspectRatio: .8,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: summaryCards,
                )
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}