import 'package:flutter/material.dart';

class TextBox extends StatelessWidget{
  final String hintText;
  double width;

  TextBox({this.hintText, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 16.0,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            labelStyle: TextStyle(
              color: Colors.black,
            ),
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ),
    );
  }
}