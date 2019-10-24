import 'package:flutter/material.dart';
import 'package:lab03/components/summary_card.dart';
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

//  <Widget>[] createCards() {
//    List<Widget> cards = [];
//
//    globals.testItems.forEach((item) => {
//      cards.add(SummaryCard(item: item));
//    });
//
//    return cards;
//  }

  @override
  Widget build(BuildContext context) {

    List<Widget> summaryCards = [];
    globals.testItems.forEach((item) {
      summaryCards.add(SummaryCard(item: item));
    });

    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
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
                height: 1500,
                child: GridView.count(
                  childAspectRatio: .8,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: summaryCards,
  //                children: <Widget>[
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  ////                  SummaryCard(),
  //                  createCards()
  //                ]
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