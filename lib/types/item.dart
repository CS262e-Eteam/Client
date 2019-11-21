/*
Defines class Item
 */

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
// import 'package:lab03/components/summary_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:lab03/database/database_service.dart';
import 'package:lab03/pages/item_detail.dart';
import 'package:lab03/shared/no_animation_route.dart';

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

  final String id;
  final String sellerId;
  final int price;
  final bool isOBO;
  final String name;
  final String description;
  final String imageURL;
  final String condition;
  final String category;

  final String iSBN;
  final String author;
  final String course;

  final String size;
  final String gender;
  final String brand;

  //from Firestore doc type
  factory Item.fromFirestore(DocumentSnapshot doc){
    Map data = doc.data;
    return Item(
      id: doc.documentID.toString(),
      sellerId: data['sellerID'] ?? "",
      price: data['price'] ?? 0,
      isOBO: data['isOBO'] ?? false,
      name: data['name'] ?? "",
      description: data['description'] ?? "",
      imageURL: data['imageURL'] ?? "",
      condition: data['condition'] ?? "",
      category: data['category'] ?? "",
      iSBN: data['iSBN'] ?? "",
      author: data['author'] ?? "",
      course: data['course'] ?? "",
      size: data['size'] ?? "",
      gender: data['gender'] ?? "",
      brand: data['brand'] ?? ""
      );
  }
  //from JSON map type
  factory Item.fromMap(Map data){
    return Item(
      id: data['documentID'].toString(),
      sellerId: data['sellerID'] ?? "",
      price: data['price'] ?? 0,
      isOBO: data['isOBO'] ?? false,
      name: data['name'] ?? "",
      description: data['description'] ?? "",
      imageURL: data['imageURL'] ?? "",
      condition: data['condition'] ?? "",
      category: data['category'] ?? "",
      iSBN: data['iSBN'] ?? "",
      author: data['author'] ?? "",
      course: data['course'] ?? "",
      size: data['size'] ?? "",
      gender: data['gender'] ?? "",
      brand: data['brand'] ?? ""
      );
  }
}
class ItemsList extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    // var user = Provider.of<FirebaseUser>(context);
    var items = Provider.of<List<Item>>(context);
    // print("number of Items read off database:" + items.length.toString());
    return Container (
      child: ListView(
        children: items.map((item){
          return Card(
            child: ListTile(
              leading: Text(item.imageURL, style: TextStyle(fontSize: 50)),
              title: Text(item.name),
              subtitle: Text('Cost \$${item.price}'),
              onTap: () =>Navigator.push(
                  context,
                  NoAnimationRoute(
                      builder: (BuildContext context) =>
                          ItemDetail( item: item ),
                  )
              )
              )
            );
        }).toList()
        )    
    );
  }
}