import 'package:flutter/material.dart';
import 'package:lab03/shared/colors.dart' as colors;

class ItemForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return ItemFormState();
  }
}

class ItemFormState extends State<ItemForm> {
  final itemName = TextEditingController();
  final itemDescription = TextEditingController();
  final itemCostString = TextEditingController();
  String dropdownValue = 'New';
  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: AppBar(
      title: Text("New Items"),
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
              child: 
              IntrinsicHeight(
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  <Widget>[
                    RaisedButton(
                      child:Text("Cancel"),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                    ),
                    RaisedButton(
                      child:Text("Submit"),
                      onPressed: (){
                        Navigator.pop(context);
                      }
                    )
                  ]),
              )
            )
        ),
      )
    ),




    body: ListView(
      padding: EdgeInsets.all(20),
      children: 
      <Widget>[
        Image.asset(
          'lib/images/test-img.JPG',
          height: 200,
        ),
        Row(
          children:<Widget>[
          Text(
            'Item Name:\t',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            )
          ),
          new Flexible(
            child:
            TextFormField(
                controller: itemName,
                validator: (value) {
                  if (value.isEmpty) return "Please enter a name";
                  return null;
                },
                keyboardType: TextInputType.text
            ),
          ),
        ]),
        Row(children:
        <Widget>[
          Text('Item Description:\t',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              )
            ),
          new Flexible(
            child:TextFormField(
              controller: itemDescription,
              validator: (value) {
                if (value.isEmpty) return "Please enter a Description";
                return null;
              },
              keyboardType: TextInputType.multiline,
              maxLines: null,
            ),
          )
        ]),
        Row(children:
        <Widget>[
          Text('Item Cost:\t',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            )
          ),
          new Flexible(child:
          TextFormField(
              controller: itemCostString,
              validator: (value) {
                if (value.isEmpty) return "Please enter a number";
                return null;
              },
              keyboardType: TextInputType.number
          )),
        ]),
          Row(
            children: <Widget>[
              Text('Item Condition:\t',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                )
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(
                  color: Colors.deepPurple
                ),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['New', 'Good', 'Decent', 'Bad']
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                  .toList(),
              ),
              Expanded(child:Container())
            ],
          )
      ]
    )
  );
}
