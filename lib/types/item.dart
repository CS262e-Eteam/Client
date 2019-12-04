/*
Defines class Item
 */

import 'package:flutter/foundation.dart';

class Item {
  Item({
    @required this.id,
    @required this.sellerId,
    @required this.price,
    @required this.isOBO,
    @required this.name,
    this.description,
    this.imageURL,
    @required this.condition,
    @required this.category,
    this.iSBN,
    this.author,
    this.course,
    this.size,
    this.gender,
    this.brand,
  });

  final int id;
  final int sellerId;
  int price;
  bool isOBO;
  String name;
  String description;
  String imageURL;
  String condition;
  String category;

  String iSBN;
  String author;
  String course;

  String size;
  String gender;
  String brand;
}