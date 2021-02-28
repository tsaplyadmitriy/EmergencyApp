import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'base_page.dart';
import '../../components/dropdown_selector.dart';
import 'package:emergency_app/card_gen/card_generator.dart';

class GeneralConditionPage extends StatelessWidget implements BasePage {
  String screenName = "Общее состояние";

  GeneralConditionPage();

  String get name => screenName;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(16.0,36.0,16.0,36.0),
        child: Column(
          children: [
            TitleAndDropBox(
                titleText: "Общее состояние",
                dropBoxCases: [
                  "удовлетворительное", "средней степени тяжести",
                  "тяжелое", "крайне тяжелая за счет", "агональное",
                  "смерть"
                ],
                fieldKey: TextFieldKey.SECTION_22_SUBSECTION_1_TEXT_1
            ),
            Divider(height: 24.0),
            TitleAndDropBox(
                titleText: "Поведение",
                dropBoxCases: [
                  "спокойное", "возбужденное",
                  "агрессивное", "депрессивное"
                ],
            ),
            Divider(height: 24.0),
            TitleAndDropBox(
              titleText: "Сознание",
              dropBoxCases: [
                "ясное", "спутанное",
                "заторможенное", "сомнолентность",
                "кома", "отсутствует"
              ],
              fieldKey: TextFieldKey.SECTION_22_SUBSECTION_3_TEXT_1
            ),
            Divider(height: 24.0)
          ],
    ),
    );
  }
}


Widget TitleAndDropBox ({
  @required String titleText,
  @required List<String> dropBoxCases,
  TextFieldKey fieldKey,
  String additionalText

})
{
return Row(
  children: [
    Expanded(
      child: Container(
        child: Text(
          titleText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
    Expanded(
        child: Container(
          child: DropdownSelector(
            items: dropBoxCases,
          ),
        )
    )
  ],

);
}
