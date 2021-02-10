import 'package:emergency_app/components/rounded_input_field.dart';
import 'package:flutter/material.dart';

Widget beautifulRow({
  @required String textField,
  String hintText,
  @required double width,
  double height,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: height,
        width: (width - 32) / 2,
        child: Text(textField),
      ),
      Container(
        height: height,
        width: (width - 32) / 2,
        child: RoundedInputField(hintText),
      ),
    ],
  );
}
