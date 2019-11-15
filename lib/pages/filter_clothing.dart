import 'package:flutter/material.dart';
import 'package:lab03/components/summary_card.dart';
import 'package:lab03/pages/search_delegate.dart';
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

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Clothing"),
        backgroundColor: colors.grayBlue,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate()
              );
            },
          )
        ],
        
        ),

      body: new GridView.count(
        childAspectRatio: .8,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: summaryCards,
      )
    );
  }
}