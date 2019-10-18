import 'package:flutter/material.dart';
import 'package:lab03/components/summary_card.dart';

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
            return Container (
              height: 1500,
              child: GridView.count(
                childAspectRatio: .8,
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
    ],
  );
  }
}