import 'package:flutter/material.dart';

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
        child: Container(
            height: 200,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
    //                        Image(
    //                            image: AssetImage('/images/test-img.JPG'),
    //                            height: 100,
    //                          ),

                            Container (
                              color: Colors.grey,
                              height: 100,
                              width: 300,
                              child: Text (
                                'Image'
                              )
                            ),
                            Padding (
                              padding: EdgeInsets.only(bottom: 10),
                            ),
                            Text(
                              'Text Book',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: screenHeight * .02,
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
                            )
                          ]
                        )
                      )
                    )
                )
            ) // tag container
        )
    );
  }
}