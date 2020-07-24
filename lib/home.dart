import 'package:flutter/material.dart';
import 'package:test_app/contact_us.dart';
import 'package:test_app/image_page2.dart';
import 'package:test_app/size_config.dart';
import 'package:test_app/view_images.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Images',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'View Images',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Contact_Us(),
              Page2_Image(),
              ViewImage(),
            ],
          ),
        ),
      ),
    );
  }
}
