import 'package:flutter/material.dart';
import 'package:lab03/components/summary_card.dart';
import 'package:lab03/pages/search_delegate.dart';
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;

class FilterList extends StatefulWidget {
  FilterList({Key key, this.filter}) : super(key: key);

  final String filter;

  @override
  FilterListState createState() => FilterListState();
}

class FilterListState extends State<FilterList> {
  String title = "";

  @override
  Widget build(BuildContext context) {

    List<Widget> summaryCards = [];
    globals.testItems.forEach((item) {
      if ((this.widget.filter == "Favorited" && globals.testUser.favoritedItems.contains(item.id)) ||
          (this.widget.filter == "My Items" && globals.testUser.postedItems.contains(item.id)) ||
          item.category == this.widget.filter ||
          this.widget.filter == "All Items") {
        summaryCards.add(SummaryCard(item: item, isSeller: true));
      }
    });

    if (this.widget.filter == "Textbook") {
      this.title = "Textbooks";
    } else {
      this.title = this.widget.filter;
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
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