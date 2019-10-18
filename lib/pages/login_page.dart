import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
	return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
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
			backgroundColor: Color(0xff466081),
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
								controller: passwordLogin,
							),
						],
					)
				),
				Padding(
					padding: EdgeInsets.only(bottom: 15)
				),
//				Padding(
//					padding: EdgeInsets.all(15),
//					child: Container(
//						height: 1,
//						color: Color(0xff692a3c)
//					)
//				),
//				Padding(
//					padding: EdgeInsets.only(bottom: 15)
//				),
//				Text(
//					"Create Account",
//					style: TextStyle(
//						fontSize: 24,
//						fontWeight: FontWeight.bold,
//					),
//				),
//				Padding(
//					padding: EdgeInsets.only(bottom: 15)
//				),
//				Padding(
//					padding: EdgeInsets.symmetric(horizontal: 10),
//					child: Column(
//						crossAxisAlignment: CrossAxisAlignment.start,
//						children: <Widget>[
//							Text(
//								"Email"
//							),
//							TextField(
//								controller: emailLogin,
//							),
//							Padding(
//								padding: EdgeInsets.only(bottom: 15)
//							),
//							Text(
//								"Password"
//							),
//							TextField(
//								controller: emailLogin,
//							),
//						],
//					)
//				),
				const SizedBox(height: 30),
				RaisedButton(
					child:Text("Log In"),
					color: Colors.blue,
					onPressed: (){
					}
				)
			],
		)
  );
}