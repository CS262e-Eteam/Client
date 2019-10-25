import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab03/pages/item_detail.dart';
import 'package:lab03/shared/no_animation_route.dart';

import 'package:lab03/types/item.dart';

import 'package:lab03/shared/colors.dart' as colors;
import 'package:lab03/shared/globals.dart' as globals;

class FavoriteHeart extends StatefulWidget {
  FavoriteHeart({Key key, this.itemId}) : super(key: key);

  final int itemId;

  @override
  FavoriteHeartState createState() => FavoriteHeartState();
}

class FavoriteHeartState extends State<FavoriteHeart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (globals.testUser.favoritedItems.contains(widget.itemId)) {
            globals.testUser.favoritedItems.remove(widget.itemId);
          } else {
            globals.testUser.favoritedItems.add(widget.itemId);
          }
          setState(() {});
        },
        child: Container(
            alignment: Alignment.bottomRight,
            child: globals.testUser.favoritedItems.contains(widget.itemId) ?
            Icon(
              FontAwesomeIcons.solidHeart,
              color: colors.lightestBerry,
            ) :
            Icon(
                FontAwesomeIcons.heart
            )
        )
    );
  }
}