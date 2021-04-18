import 'package:emergency_app/card_ui/pages/general_condition_page.dart';
import 'package:emergency_app/components/GridViewItem.dart';
import 'package:emergency_app/components/TitleAndDropbox.dart';

import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rounded_input_field.dart';
import 'base_page.dart';
import 'package:emergency_app/card_gen/card_generator.dart';

class SkinLayers extends StatelessWidget implements BasePage {
  @override
  String screenName = "Кожные покровы";
  String test = "";

  SkinLayers();

  String get name => screenName;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                TitleAndDropBox(
                  titleText: "Кожные покровы",
                  dropBoxCases: [
                    "Обычные (нормальные)",
                    "Бледные",
                    "Гиперемированные",
                    "Желтушные",
                    "Цианотичные",
                    "Сухие",
                    "Влажные"
                  ],
                  checkboxFields: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_4,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_5,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_6,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_7,
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                          alignment: Alignment.topLeft, child: SizedBox()),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Акроцианоз",
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              // height: 60.0,
                              child: DropdownSelector(
                                items: ["Нет", "Есть"],
                                itemsCheckBoxFieldKey: [
                                  CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_8,
                                  CheckBoxFieldKey.SECTION_22_SUBSECTION_12_CHECKBOX_9,
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Divider(
                  height: 24,
                ),
                TitleAndDropBox(
                  titleText: "Мраморность",
                  dropBoxCases: [
                   "Нет",
                    "Есть"
                  ],
                  checkboxFields: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_13_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_13_CHECKBOX_2,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                TitleAndDropBox(
                  titleText: "Отеки",
                  dropBoxCases: [
                    "Нет",
                    "Есть (локализация) ...",
                  ],
                  checkboxFields: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_14_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_14_CHECKBOX_2,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                TitleAndDropBox(
                  titleText: "Сыпь",
                  dropBoxCases: [
                    "Нет",
                    "Есть (локализация) ...",
                  ],
                  checkboxFields: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_15_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_15_CHECKBOX_2,
                  ],
                ),

              ],
            ))
      ],
    );
  }
}



