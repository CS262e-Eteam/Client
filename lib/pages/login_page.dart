import 'package:flutter/material.dart';
import 'package:lab03/pages/signup_page.dart';
import 'package:lab03/shared/colors.dart' as colors;

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
	return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final emailLogin = TextEditingController();
  final passwordLogin = TextEditingController();
//	final itemName = TextEditingController();
	FocusNode emailNode = new FocusNode();
	FocusNode passwordNode = new FocusNode();
//  final emailCreate = TextEditingController();
//  final emailConfirm = TextEditingController();
//  final passwordCreate = TextEditingController();
//  final passwordConfirm = TextEditingController();

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
					child: TextFormField(
						controller: emailLogin,
						focusNode: emailNode,
						validator: (value) {
							if (value.isEmpty) return "Please enter an Email";
							return null;
						},
						keyboardType: TextInputType.text,
						cursorColor: colors.lightBerry,
						decoration: InputDecoration(
							labelText: "Email",
							labelStyle: TextStyle(
								color: emailNode.hasFocus ? colors.lightBerry : Colors.black
							),
							focusedBorder: UnderlineInputBorder(
								borderSide: BorderSide(color: colors.lightBerry),
							),
						),
					),
				),
				Padding(
					padding: EdgeInsets.symmetric(horizontal: 10),
					child: TextFormField(
						controller: passwordLogin,
						focusNode: passwordNode,
						validator: (value) {
							if (value.isEmpty) return "Please enter a Password";
							return null;
						},
						keyboardType: TextInputType.text,
						cursorColor: colors.lightBerry,
						decoration: InputDecoration(
							labelText: "Password",
							labelStyle: TextStyle(
								color: passwordNode.hasFocus ? colors.lightBerry : Colors.black
							),
							focusedBorder: UnderlineInputBorder(
								borderSide: BorderSide(color: colors.lightBerry),
							),
						),
					),
				),
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
//								controller: passwordLogin,
//							),
//						],
//					)
//				),
				Padding(
					padding: EdgeInsets.only(bottom: 15)
				),

				const SizedBox(height: 30),
				RaisedButton(
					child:Text("Log In"),
					color: colors.teal,
					onPressed: (){
					}
				),
				Padding(
					padding: EdgeInsets.only(top: 45)
				),
				GestureDetector (
					child: Row(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Text(
								"Don't have an account yet? ",
								textAlign: TextAlign.center,
								style: TextStyle(
									fontSize: 14,
//									color: colors.teal,
								),
							),
							Text(
								"Sign-up",
								textAlign: TextAlign.center,
								style: TextStyle(
									fontSize: 14,
									color: colors.teal,
								),
							)
						],
					),
					onTap: () {
					Navigator.push(
						context,
						new MaterialPageRoute(builder: (context) => new SignUpPage()),
					);
				}
				),
			],
		)
  );
}
