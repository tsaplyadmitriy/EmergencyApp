

import 'package:flutter/cupertino.dart';

import 'base_page.dart';

class PatientInfoPage extends StatelessWidget implements BasePage{

  String screenName = "Сведения о больном";

  PatientInfoPage();

  String get name => screenName;

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        Center(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(screenName)
          ],
        )
    )
    );
  }
}
