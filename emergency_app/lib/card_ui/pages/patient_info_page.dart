

import 'package:emergency_app/components/text_checkbox.dart';
import 'package:flutter/cupertino.dart';

import 'base_page.dart';

class PatientInfoPage extends StatelessWidget implements BasePage{

  String screenName = "Сведения о больном";

  PatientInfoPage();

  String get name => screenName;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView(children: [
      Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(16),
        child: Column(children: [

          
        ],),
      )

    ],);
  }
}
