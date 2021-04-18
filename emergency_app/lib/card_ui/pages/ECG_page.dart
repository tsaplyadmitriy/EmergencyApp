import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:emergency_app/components/rounded_input_field.dart';
import 'package:flutter/cupertino.dart';

import 'base_page.dart';

class ECGPage extends StatelessWidget implements BasePage {
  @override
  String screenName = "ЭКГ";

  ECGPage();

  String get name => screenName;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
        width: width,
        margin: EdgeInsets.all(16),
        child: Column(children: <Widget>[
          Text(
            "ЭКГ до оказания помощи",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          )
        ]));
  }
}
