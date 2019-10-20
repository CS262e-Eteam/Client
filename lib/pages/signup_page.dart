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
			title: Text("Login"),
			backgroundColor: colors.grayBlue,
		),
		body: ListView(
			padding: EdgeInsets.all(20),
			children: <Widget>[
				Text(
					"Login",
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
								controller: emailLogin,
							),
						],
					)
				),
				Padding(
					padding: EdgeInsets.only(bottom: 15)
				),
				Padding(
					padding: EdgeInsets.all(15),
					child: Container(
						height: 1,
						color: colors.lightBerry,
					)
				),
				Padding(
					padding: EdgeInsets.only(bottom: 15)
				),
				Text(
					"Create Account",
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
								controller: emailLogin,
							),
						],
					)
				),
				const SizedBox(height: 30),
				RaisedButton(
					child:Text("Log In"),
					color: colors.teal,
					onPressed: (){
					}
				)
			],
		)
	);
}

