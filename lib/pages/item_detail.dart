import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab03/components/property_field.dart';

class ItemDetail extends StatefulWidget{
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
        backgroundColor: Color(0xff466081),
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
          Text(
            "Textbook Title",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            )
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                color: Color(0xFFA5C672),
                borderRadius: BorderRadius.all(
                  Radius.circular(16)
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Text (
                  '\$20',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
    ),
                ),
              ),

            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Text(
            "This book is a good textbook. It is a useful book to have for a computer science"
              "for a class at Calvin University. This is a test description."
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              height: 1,
              color: Color(0xFF692A3C)
            )
          ),
          PropertyField(title: "CONDITION", value: "New"),
          PropertyField(title: "AUTHOR", value: "Example Author"),
          PropertyField(title: "CLASS", value: "CS 202"),
          PropertyField(title: "ISBN", value: "123123123123123"),
          PropertyField(title: "BRAND", value: "Company Co."),
          PropertyField(title: "SIZE", value: "Medium"),
          Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                  height: 1,
                  color: Color(0xFF692A3C)
              )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF6f913b),
//              color: Color(0xFFA5C672),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Contact Seller",
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
        ],
      ),
    );
  }
}


