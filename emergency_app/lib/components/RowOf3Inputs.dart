import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:emergency_app/components/rounded_input_field.dart';
import 'package:flutter/cupertino.dart';

import 'dropdown_selector.dart';

class RowOf3Inputs extends StatelessWidget {


  RowOf3Inputs(
      {@required this.height,
        @required this.first,
        @required this.second,
        @required this.third,
        @required this.width,
        @required this.hintText,
        @required this.fieldKey});
  final Function first;
  final Function second;
  final Function third;
  final double width, height;
  final List<String> hintText;
  final List<TextFieldKey> fieldKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: height,
          width: (width - 64) / 3,
          child: RoundedInputField(
            hintText: hintText[0],
            fieldKey: fieldKey[0],
          ),
        ),
        Container(
          height: height,
          width: (width - 64) / 3,
          child: RoundedInputField(
            hintText: hintText[1],
            fieldKey: fieldKey[1],
          ),
        ),
        Container(
          height: height,
          width: (width - 64) / 3,
          child: RoundedInputField(
            hintText: hintText[2],
            fieldKey: fieldKey[2],
          ),
        ),
      ],
    );
  }
}
