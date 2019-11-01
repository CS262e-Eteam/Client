import 'package:flutter/material.dart';

import 'package:lab03/shared/colors.dart' as colors;

class SignUpPage extends StatefulWidget{
	@override
	State<StatefulWidget> createState(){
		return SignUpPageState();
	}
}

class SignUpPageState extends State<SignUpPage> {
	final emailLogin = TextEditingController();
	final passwordLogin = TextEditingController();
	final emailCreate = TextEditingController();
	final emailConfirm = TextEditingController();
	final passwordCreate = TextEditingController();
	final passwordConfirm = TextEditingController();

	@override
	Widget build(BuildContext context) => new Scaffold(
		appBar: AppBar(
			title: Text("SignUp"),
			backgroundColor: colors.grayBlue,
		),
		body: ListView(
			padding: EdgeInsets.all(20),
			children: <Widget>[
				Text(
					"Get started with a free account",
					style: TextStyle(
						fontSize: 24,
						fontWeight: FontWeight.bold,
					),
				),
				Padding(
					padding: EdgeInsets.only(bottom: 15)
				),
				Padding(
					padding: EdgeInsets.symmetric(horizontal: 10),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Text(
								"Username"
							),
							TextField(
								controller: emailLogin,
							),
							Padding(
								padding: EdgeInsets.only(bottom: 15)
							),
							Text(
								"Email"
							),
							TextField(
								controller: emailLogin,
							),
							Padding(
								padding: EdgeInsets.only(bottom: 15)
							),
							Text(
								"Password"
							),
							TextField(
								controller: passwordCreate,
							),
							Padding(
								padding: EdgeInsets.only(bottom: 15)
							),
							Text(
								"Confirm Password"
							),
							TextField(
								controller: passwordConfirm,
							),
						],
					)
				),
				Padding(
					padding: EdgeInsets.only(bottom: 15)
				),
				Padding(
					padding: EdgeInsets.all(15),
//					child: Container(
//						height: 1,
//						color: colors.lightBerry,
//					)
				),
//				Padding(
//					padding: EdgeInsets.only(bottom: 15)
//				),
//				const SizedBox(height: 30),
				RaisedButton(
					child:Text("Sign Up"),
					color: colors.teal,
					onPressed: (){
					}
				)
			],
		)
	);
}

