import 'package:flutter/material.dart';
import 'package:test_app/sign_in.dart';
import 'package:test_app/sign_up.dart';
import 'package:test_app/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.25,
                  vertical: SizeConfig.screenHeight * 0.04),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignIn();
                  }));
                },
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text('Sign In'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.black)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.screenWidth * 0.25),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUp();
                  }));
                },
                color: Colors.grey.shade500,
                child: Text('Sign Up'),
                padding: EdgeInsets.symmetric(vertical: 15.0),
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
