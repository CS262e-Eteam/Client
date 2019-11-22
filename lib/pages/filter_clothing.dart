import 'package:flutter/material.dart';
import 'package:lab03/components/summary_card.dart';
import 'package:lab03/pages/Splashscreen.dart';
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/shared/colors.dart' as colors;
import 'package:material_search/material_search.dart';

class FilterClothing extends StatefulWidget {
  FilterClothing({Key key, this.title}) : super(key: key);

  final String title;

  @override
  FilterClothingState createState() => FilterClothingState();
}

class FilterClothingState extends State<FilterClothing> {
  final _names =  [
    'Software Engineering',
    'T Shirt'
    'Computer Networking',
  ];

  String _name = 'No one';

  final _formKey = new GlobalKey<FormState>();

  _buildMaterialSearchPage(BuildContext context) {
    return new MaterialPageRoute<String>(
        settings: new RouteSettings(
          name: 'material_search',
          isInitialRoute: false,
        ),
        builder: (BuildContext context) {
          return new Material(
            child: new MaterialSearch<String>(
              placeholder: 'Search',
              results: _names.map((String v) => new MaterialSearchResult<String>(
                icon: Icons.library_books,
                value: v,
                text: " $v",
              )).toList(),
              filter: (dynamic value, String criteria) {
                return value.toLowerCase().trim()
                    .contains(new RegExp(r'' + criteria.toLowerCase().trim() + ''));
              },
              onSelect: (dynamic value) => Navigator.of(context).pop(value),
              onSubmit: (String value) => Navigator.of(context).pop(value),
            ),
          );
        }
    );
  }

  _showMaterialSearch(BuildContext context) {
    Navigator.of(context)
        .push(_buildMaterialSearchPage(context))
        .then((dynamic value) {
      setState(() => _name = value as String);
    });
  }

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
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          new IconButton(
            onPressed: () {
              _showMaterialSearch(context);
            },
            tooltip: 'Search',
            icon: new Icon(Icons.search),
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