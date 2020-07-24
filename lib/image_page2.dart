import 'package:flutter/material.dart';
import 'package:test_app/size_config.dart';

class Page2_Image extends StatefulWidget {
  @override
  _Page2_ImageState createState() => _Page2_ImageState();
}

class _Page2_ImageState extends State<Page2_Image> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        isSelected
            ? Container(
                height: SizeConfig.screenHeight * 0.5,
                width: SizeConfig.screenWidth * 0.5,
                child: Image.asset('images/demo.png'),
              )
            : FlatButton(
                onPressed: () {
                  setState(() {
                    isSelected = true;
                  });
                },
                color: Colors.grey.shade500,
                child: Text('Gallery'),
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.screenHeight * 0.025,
                    horizontal: SizeConfig.screenWidth * 0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
      ],
    ));
  }
}
