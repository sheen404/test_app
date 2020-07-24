import 'package:flutter/material.dart';
import 'package:test_app/size_config.dart';

class ViewImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade500)),
              height: SizeConfig.screenHeight * 0.4,
              width: SizeConfig.screenWidth * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.screenWidth * 0.01),
                    child: Image.asset('images/demo.png'),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.screenWidth * 0.02),
                    child: Text(
                      'ID : ${index + 1}',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: SizeConfig.screenWidth * 0.02),
                    child: Text(
                      'TITLE : accusamus beatae ad facilis cum similique qui sunt',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
