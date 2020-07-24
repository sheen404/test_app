import 'package:flutter/material.dart';
import 'package:test_app/size_config.dart';

class Contact_Us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
            child: Text('Phone Number: +91 9876543210'),
          ),
          Text('Email: abc@xyz.com')
        ],
      ),
    );
  }
}

@override
bool get wantKeepAlive => true;
