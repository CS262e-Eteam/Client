import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab03/pages/item_detail.dart';
import 'package:lab03/shared/no_animation_route.dart';

class SummaryCard extends StatefulWidget {
  SummaryCard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  SummaryCardState createState() => SummaryCardState();
}

class SummaryCardState extends State<SummaryCard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  NoAnimationRoute(
                      builder: (BuildContext context) =>
                          ItemDetail(),
                  )
              );
            },
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: screenWidth * .03,
                        spreadRadius: screenHeight * .0005
                    )]
                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: .025),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding (
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget> [
                            Image.asset(
                              'lib/images/test-img.JPG',
                              height: 100,
                              alignment: Alignment.topCenter,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding (
                                  padding: EdgeInsets.only(bottom: 15),
                                ),
                                Text(
                                  'Text Book',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 5)
                                ),
                                Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.lightGreen,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)
                                        )
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Text (
                                        '\$20',
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Container(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(
                                            FontAwesomeIcons.heart
                                        )
                                    )
                                )
                              ],
                            )
                          ]
                        )
                      )
                    )
                )
            ) // tag container
    );
  }
}