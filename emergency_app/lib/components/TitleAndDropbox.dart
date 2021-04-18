import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'dropdown_selector.dart';

class TitleAndDropBox extends StatelessWidget {


  TitleAndDropBox ({
    @required this.titleText,
    @required  this.dropBoxCases,
    List<CheckBoxFieldKey> checkboxFields,
    int idOfCheckBoxWithText,
    TextFieldKey fieldKey,
    double fontSize
  });

  final String titleText;
  final List<String> dropBoxCases;
  List<CheckBoxFieldKey> checkboxFields;
  int idOfCheckBoxWithText;
  TextFieldKey fieldKey;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              titleText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
            ),
          ),
        ),
        Expanded(
            child: Container(
              child: DropdownSelector(
                items: dropBoxCases,
                itemsCheckBoxFieldKey: checkboxFields,
                idOfCheckBoxWithText: idOfCheckBoxWithText,
                textFieldKey: fieldKey,
              ),
            )
        )
      ],

    );
  }
}


