/*
Item Detail Page - shows more extensive details about an item and allows a user to contact user
@params: item, Item: the item whose details to display
 */

import 'package:flutter/material.dart';
import 'package:lab03/components/favorite_heart.dart';
import 'package:lab03/components/property_field.dart';

import 'package:lab03/shared/colors.dart' as colors;
import 'package:lab03/types/item.dart';

import 'dart:io';
import 'dart:async';


class ItemDetail extends StatefulWidget{
  ItemDetail({Key key, this.item}) : super(key: key);

  final Item item;

  @override
  State<StatefulWidget> createState(){
    return ItemDetailState();
  }
}

class ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Details"),
        backgroundColor: colors.grayBlue,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.5, color: colors.lightBerry),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              decoration: BoxDecoration(
                color: colors.darkGreen,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "CONTACT SELLER",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                  textAlign: TextAlign.center,
                ),
              )
          ),
        )
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Image.asset(
            'lib/images/test-img.JPG',
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Text(
                widget.item.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  )
                ),
              ),
              FavoriteHeart(itemId: widget.item.id)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              children: <Widget>[
                widget.item.price != 0 || !widget.item.isOBO ?
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: colors.lightGreen,
                      borderRadius: BorderRadius.all(
                          Radius.circular(16)
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text (
                      '\$' + widget.item.price.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ) : Container(),
                widget.item.price != 0 || !widget.item.isOBO ?
                Padding(
                    padding: EdgeInsets.only(right: 10)
                ) : Container(),
                widget.item.isOBO ?
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: colors.teal,
                      borderRadius: BorderRadius.all(
                          Radius.circular(16)
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text (
                      'OBO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ) : Container(),
              ],
            )
          ),
          widget.item.description != null && widget.item.description != '' ?
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              widget.item.description,
            ),
          ) : Container(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 1,
              color: colors.lightBerry,
            )
          ),
          widget.item.condition != null && widget.item.condition != '' ?
            PropertyField(title: "CONDITION", value: widget.item.condition) : Container(),
          widget.item.author != null && widget.item.author != '' ?
            PropertyField(title: "AUTHOR", value: widget.item.author) : Container(),
          widget.item.course != null && widget.item.course != '' ?
            PropertyField(title: "CLASS", value: widget.item.course) : Container(),
          widget.item.iSBN != null && widget.item.iSBN != ''?
            PropertyField(title: "ISBN", value: widget.item.iSBN) : Container(),
          widget.item.brand != null && widget.item.brand != '' ?
            PropertyField(title: "BRAND", value: widget.item.brand) : Container(),
          widget.item.size != null && widget.item.size != '' ?
            PropertyField(title: "SIZE", value: widget.item.size) : Container(),
        ],
      ),
    );
  }
}
