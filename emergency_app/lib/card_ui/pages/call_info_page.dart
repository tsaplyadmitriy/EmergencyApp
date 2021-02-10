

import 'package:flutter/cupertino.dart';

import 'base_page.dart';

class CallInfoPage extends StatelessWidget implements BasePage{
  @override
  String screenName = "Информация о вызове";

  CallInfoPage();

  String get name => screenName;


  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(screenName),

               ],
        )
    ));
  }


}
