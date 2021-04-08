import 'package:flutter/cupertino.dart';

import 'base_page.dart';

class LungthPage extends StatelessWidget implements BasePage{

  @override
  String screenName;

  LungthPage();

  String get name => screenName;


  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
          children: [
            Text("1"),
            Text("2"),
          ],
        )

    );
  }
}
