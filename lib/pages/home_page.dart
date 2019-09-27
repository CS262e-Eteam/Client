import 'package:flutter/material.dart';
import 'package:lab03/components/summary-card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
  return CustomScrollView(
    slivers: <Widget>[
      const SliverAppBar(
        backgroundColor: Color(0xff466081),
        pinned: true,
        expandedHeight: 250.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text(
            'Calvin Marketplace'
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
//            return Container(
//              child: TextField(
//
//              ),
//            );
            return Container (
              height: 1000,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  SummaryCard(),
                  SummaryCard(),
                  SummaryCard(),
                  SummaryCard(),
                  SummaryCard(),
                  SummaryCard(),
                  SummaryCard(),
                ]
              )
            );
          },
          childCount: 1,
        ),
      ),
//      SliverGrid(
//        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//          maxCrossAxisExtent: 200.0,
//          mainAxisSpacing: 10.0,
//          crossAxisSpacing: 10.0,
//          childAspectRatio: 4.0,
//        ),
//        delegate: SliverChildBuilderDelegate(
//              (BuildContext context, int index) {
//            return SummaryCard();
//          },
//          childCount: 20,
//        ),
//      ),
    ],
  );
//    GridView.count(
//    primary: false,
//    padding: const EdgeInsets.all(20),
//    crossAxisSpacing: 20,
//    mainAxisSpacing: 20,
//    crossAxisCount: 2,
//    children: <Widget>[
//      SummaryCard(),
//      SummaryCard(),
//      SummaryCard(),
//      SummaryCard(),
//      SummaryCard(),
//      SummaryCard(),
//      SummaryCard(),
////      Container(
////        padding: const EdgeInsets.all(8),
////        child: const Text('He\'d have you all unravel at the'),
////        color: Colors.teal[100],
////      ),
////      Container(
////        padding: const EdgeInsets.all(8),
////        child: const Text('Heed not the rabble'),
////        color: Colors.teal[200],
////      ),
////      Container(
////        padding: const EdgeInsets.all(8),
////        child: const Text('Sound of screams but the'),
////        color: Colors.teal[300],
////      ),
////      Container(
////        padding: const EdgeInsets.all(8),
////        child: const Text('Who scream'),
////        color: Colors.teal[400],
////      ),
////      Container(
////        padding: const EdgeInsets.all(8),
////        child: const Text('Revolution is coming...'),
////        color: Colors.teal[500],
////      ),
////      Container(
////        padding: const EdgeInsets.all(8),
////        child: const Text('Revolution, they...'),
////        color: Colors.teal[600],
////      ),
//      ],
//    );
  }
}