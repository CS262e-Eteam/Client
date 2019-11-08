import 'package:flutter/material.dart';

import 'package:lab03/shared/colors.dart' as colors;
import 'package:lab03/shared/globals.dart' as globals;
import 'package:lab03/types/item.dart';

class ItemForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return ItemFormState();
  }
}

class ItemFormState extends State<ItemForm> {
  final itemName = TextEditingController();
  final itemDescription = TextEditingController();
  final itemCost = TextEditingController();
  final itemClass = TextEditingController();
  final itemISBN = TextEditingController();
  final itemSize = TextEditingController();
  final itemBrand = TextEditingController();
  final itemAuthor = TextEditingController();
  String itemCondition = '';
  String itemType = '';
  String itemGender = '';
  bool itemOBO = false;

  FocusNode itemNameNode = new FocusNode();
  FocusNode itemDescriptionNode = new FocusNode();
  FocusNode itemCostNode = new FocusNode();
  FocusNode itemClassNode = new FocusNode();
  FocusNode itemISBNNode = new FocusNode();
  FocusNode itemSizeNode = new FocusNode();
  FocusNode itemBrandNode = new FocusNode();
  FocusNode itemAuthorNode = new FocusNode();

  List<String> conditions = <String>['New', 'Pretty Good', 'Fair', 'Poor'];
  String condition = 'New';

  List<String> types = <String>['Textbook', 'Clothing', 'Furniture', 'Technology', 'Other'];
  String type = 'Textbook';

  List<String> genders = <String>['None', 'Mens', 'Womens', 'Unisex'];
  String gender = 'None';

  List<Widget> optionalFields() {
    List<Widget> optionalFields = [
      Image.asset(
        'lib/images/test-img.JPG',
        height: 200,
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 15),
      ),
      TextFormField(
        controller: itemName,
        focusNode: itemNameNode,
        validator: (value) {
          if (value.isEmpty) return "Please enter a name";
          return null;
        },
        keyboardType: TextInputType.text,
        cursorColor: colors.lightBerry,
        decoration: InputDecoration(
          labelText: "Name",
          labelStyle: TextStyle(
              color: itemNameNode.hasFocus ? colors.lightBerry : Colors.black
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colors.lightBerry),
          ),
        ),
      ),
      TextFormField(
        controller: itemDescription,
        focusNode: itemDescriptionNode,
        validator: (value) {
          if (value.isEmpty) return "Please enter a name";
          return null;
        },
        keyboardType: TextInputType.text,
        cursorColor: colors.lightBerry,
        decoration: InputDecoration(
          labelText: "Description",
          labelStyle: TextStyle(
              color: itemDescriptionNode.hasFocus ? colors.lightBerry : Colors.black
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: colors.lightBerry),
          ),
        ),
      ),
      Row(
        children: <Widget>[
          Flexible(
              child: TextFormField(
                controller: itemCost,
                focusNode: itemCostNode,
                validator: (value) {
                  if (value.isEmpty) return "Please enter a name";
                  return null;
                },
                keyboardType: TextInputType.number,
                cursorColor: colors.lightBerry,
                decoration: InputDecoration(
                  labelText: "Price",
                  labelStyle: TextStyle(
                      color: itemCostNode.hasFocus ? colors.lightBerry : Colors.black
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colors.lightBerry),
                  ),
                ),
              )
          ),
          Flexible(
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                      children: <Widget>[
                        Checkbox(
                            value: itemOBO,
                            activeColor: colors.lightBerry,
                            onChanged: (bool value) {
                              setState(() {
                                itemOBO = value;
                              });
                            }
                        ),
                        Text(
                            "Or Best Offer"
                        )
                      ]
                  )
              )
          )
        ],
      ),
      Row(
        children: <Widget>[
          Flexible(
            child: FormField<String>(
              builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Condition',
                    labelStyle: TextStyle(
                        color: colors.lightBerry
                    ),
                  ),
                  isEmpty: condition == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: condition,
                      isDense: true,
                      onChanged: (String newValue) {
                        setState(() {
                          itemCondition = newValue;
                          condition = newValue;
                          state.didChange(newValue);
                        });
                      },
                      items: conditions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
          ),
          Flexible(
            child: FormField<String>(
              builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Type',
                    labelStyle: TextStyle(
                        color: colors.lightBerry
                    ),
                  ),
                  isEmpty: type == '',
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: type,
                      isDense: true,
                      onChanged: (String newValue) {
                        setState(() {
                          itemType = newValue;
                          type = newValue;
                          state.didChange(newValue);
                        });
                      },
                      items: types.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),

    ];

    if (type == 'Textbook') {
      optionalFields.addAll(
        [
          Padding(
            padding: EdgeInsets.only(bottom: 30),
          ),
          Text(
            "Fields below this point are optional, but will allow others to find your item more easily.",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          TextFormField(
            controller: itemAuthor,
            focusNode: itemAuthorNode,
            validator: (value) {
              if (value.isEmpty) return "Please enter a name";
              return null;
            },
            keyboardType: TextInputType.text,
            cursorColor: colors.lightBerry,
            decoration: InputDecoration(
              labelText: "Author",
              labelStyle: TextStyle(
                  color: itemAuthorNode.hasFocus ? colors.lightBerry : Colors.black
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colors.lightBerry),
              ),
            ),
          ),
          TextFormField(
            controller: itemClass,
            focusNode: itemClassNode,
            validator: (value) {
              if (value.isEmpty) return "Please enter a name";
              return null;
            },
            keyboardType: TextInputType.text,
            cursorColor: colors.lightBerry,
            decoration: InputDecoration(
              labelText: "Class Used For",
              labelStyle: TextStyle(
                  color: itemClassNode.hasFocus ? colors.lightBerry : Colors.black
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colors.lightBerry),
              ),
            ),
          ),
          TextFormField(
            controller: itemISBN,
            focusNode: itemISBNNode,
            validator: (value) {
              if (value.isEmpty) return "Please enter a name";
              return null;
            },
            keyboardType: TextInputType.text,
            cursorColor: colors.lightBerry,
            decoration: InputDecoration(
              labelText: "ISBN",
              labelStyle: TextStyle(
                  color: itemISBNNode.hasFocus ? colors.lightBerry : Colors.black
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colors.lightBerry),
              ),
            ),
          ),
        ]
      );

    } else if (type == 'Clothing') {
      optionalFields.addAll(
          [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
            ),
            Text(
              "Fields below this point are optional, but will allow others to find your item more easily.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: TextFormField(
                    controller: itemSize,
                    focusNode: itemSizeNode,
                    validator: (value) {
                      if (value.isEmpty) return "Please enter a name";
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    cursorColor: colors.lightBerry,
                    decoration: InputDecoration(
                      labelText: "Size",
                      labelStyle: TextStyle(
                          color: itemSizeNode.hasFocus ? colors.lightBerry : Colors.black
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colors.lightBerry),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                ),
                Flexible(
                  child: FormField<String>(
                    builder: (FormFieldState<String> state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          labelStyle: TextStyle(
                              color: colors.lightBerry
                          ),
                        ),
                        isEmpty: gender == '',
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: gender,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                itemGender = newValue;
                                gender = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: genders.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),

            TextFormField(
              controller: itemBrand,
              focusNode: itemBrandNode,
              validator: (value) {
                if (value.isEmpty) return "Please enter a name";
                return null;
              },
              keyboardType: TextInputType.text,
              cursorColor: colors.lightBerry,
              decoration: InputDecoration(
                labelText: "Brand",
                labelStyle: TextStyle(
                    color: itemBrandNode.hasFocus ? colors.lightBerry : Colors.black
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: colors.lightBerry),
                ),
              ),
            ),
          ]
      );
    }

    return optionalFields;
  }

  @override
  Widget build(BuildContext context) =>
      new Scaffold(
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
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            color: colors.lightGrayBlue,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                            child: Text(
                              "CANCEL",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                      ),
                      GestureDetector(
                        onTap: () {
                          globals.testItems.add(
                              Item(
                                  id: 11,
                                  sellerId: 1,
                                  price: int.parse(itemCost.text),
                                  description: itemDescription.text,
                                  isOBO: itemOBO,
                                  name: itemName.text,
                                  condition: condition,
                                  category: itemType,
                                  author: itemAuthor.text,
                                  course: itemClass.text,
                                  iSBN: itemISBN.text,
                                  size: itemSize.text,
                              )
                          );

                          Navigator.pop(
                            context,
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: colors.darkGreen,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                              child: Text(
                                "ADD ITEM",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ),
                    ],
                  )
              )
          ),
          body: ListView(
            padding: EdgeInsets.all(20),
            children: optionalFields(),
          )
      );
}
