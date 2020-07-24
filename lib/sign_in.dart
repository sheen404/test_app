import 'package:flutter/material.dart';
import 'package:test_app/home.dart';
import 'package:test_app/size_config.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Align(alignment: Alignment.topLeft, child: BackButton()),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  top: SizeConfig.screenHeight * 0.2),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade500, width: 2.0),
                  ),
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  top: SizeConfig.screenHeight * 0.02),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade500, width: 2.0),
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.2,
                  right: SizeConfig.screenWidth * 0.2,
                  top: SizeConfig.screenHeight * 0.1),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: SizeConfig.screenWidth * 0.2),
                child: Text('Sign In'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
