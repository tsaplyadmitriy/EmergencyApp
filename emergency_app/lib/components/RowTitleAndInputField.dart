import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:emergency_app/components/rounded_input_field.dart';
import 'package:flutter/cupertino.dart';

import 'dropdown_selector.dart';

class RowTitleAndInputField extends StatelessWidget {


  RowTitleAndInputField({
    @required this.textField,
    @required this.hintText,
    @required this.width,
    @required this.fieldKey,
    @required this.height,
  });
  final String textField;
  final String hintText;
  final double width;
  final TextFieldKey fieldKey;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: height,
          width: (width - 32) / 2,
          child: Text(
            textField,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: height,
          width: (width - 32) / 2,
          child: RoundedInputField(
            hintText: hintText,
            fieldKey: fieldKey,
          ),
        ),
      ],
    );
  }
}

