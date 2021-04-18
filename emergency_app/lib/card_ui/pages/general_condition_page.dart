import 'package:emergency_app/components/TitleAndDropbox.dart';
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
              checkboxFields: [
                CheckBoxFieldKey.SECTION_22_SUBSECTION_1_CHECKBOX_1,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_1_CHECKBOX_2,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_1_CHECKBOX_3,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_1_CHECKBOX_4,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_1_CHECKBOX_5,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_1_CHECKBOX_6
              ],
              idOfCheckBoxWithText: 3,
              fieldKey: TextFieldKey.SECTION_22_SUBSECTION_1_TEXT_1
          ),
          Divider(height: 24.0),
          TitleAndDropBox(
            titleText: "Поведение",
            dropBoxCases: [
              "спокойное", "возбужденное",
              "агрессивное", "депрессивное"
            ],
            checkboxFields: [
              CheckBoxFieldKey.SECTION_22_SUBSECTION_2_CHECKBOX_1,
              CheckBoxFieldKey.SECTION_22_SUBSECTION_2_CHECKBOX_2,
              CheckBoxFieldKey.SECTION_22_SUBSECTION_2_CHECKBOX_3,
              CheckBoxFieldKey.SECTION_22_SUBSECTION_2_CHECKBOX_4,
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
              checkboxFields: [
                CheckBoxFieldKey.SECTION_22_SUBSECTION_3_CHECKBOX_1,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_3_CHECKBOX_2,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_3_CHECKBOX_3,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_3_CHECKBOX_4,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_3_CHECKBOX_5,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_3_CHECKBOX_6
              ],
              idOfCheckBoxWithText: 4,
              fieldKey: TextFieldKey.SECTION_22_SUBSECTION_3_TEXT_1,
          ),
          Divider(height: 24.0)
        ],
      ),
    );
  }
}




