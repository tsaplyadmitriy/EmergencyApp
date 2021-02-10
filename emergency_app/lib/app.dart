

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_ui/card_ui_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',

      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: CardUIPage(),


    );
  }
}
