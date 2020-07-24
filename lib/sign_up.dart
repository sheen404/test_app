import 'package:flutter/material.dart';
import 'package:test_app/home.dart';
import 'package:test_app/size_config.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
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
                  hintText: 'Name',
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
                  left: SizeConfig.screenWidth * 0.15,
                  right: SizeConfig.screenWidth * 0.15,
                  top: SizeConfig.screenHeight * 0.02),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade500, width: 2.0),
                  ),
                  hintText: 'Confirm Password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.2,
                  right: SizeConfig.screenWidth * 0.2,
                  top: SizeConfig.screenHeight * 0.02),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                color: Colors.grey.shade500,
                child: Text('Sign Up'),
                padding: EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: SizeConfig.screenWidth * 0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
