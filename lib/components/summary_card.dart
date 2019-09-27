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
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [BoxShadow(
                        color: Colors.grey,
                        blurRadius: screenWidth * .005,
                        spreadRadius: screenHeight * .005
                    )]

                ),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: .025),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget> [
//                          Image(
//                            image: Image.file(),
//                          ),
                          Text(
                            'Random Text',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: screenHeight * .02
                            ),
                          ),
                        ]
                      )
                    )
                )
            ) // tag container
        )
    );
  }
}