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
  final int price;
  final bool isOBO;
  final String name;
  final String description;
  final String imageURL;
  final String category;

  final String iSBN;
  final String author;
  final String course;

  final String size;
  final String gender;
  final String brand;
}