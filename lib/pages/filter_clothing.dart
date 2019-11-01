import 'package:flutter/material.dart';
import 'package:lab03/components/summary_card.dart';
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;

class FilterClothing extends StatefulWidget {
  FilterClothing({Key key, this.title}) : super(key: key);

  final String title;

  @override
  FilterClothingState createState() => FilterClothingState();
}

class FilterClothingState extends State<FilterClothing> {

  @override
  Widget build(BuildContext context) {

    List<Widget> summaryCards = [];
    globals.testItems.forEach((item) {
      if (item.category == 'Clothing') {
        summaryCards.add(SummaryCard(item: item));
      }
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