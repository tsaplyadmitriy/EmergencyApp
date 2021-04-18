import 'package:emergency_app/components/GridViewItem.dart';
import 'package:emergency_app/components/RowTextWithDropdown.dart';
import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:emergency_app/components/text_checkbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rounded_input_field.dart';
import 'base_page.dart';
import 'package:emergency_app/card_gen/card_generator.dart';

class BreathingNature extends StatelessWidget implements BasePage {
  @override
  String screenName = "Характер дыхания";
  String test = "";

  BreathingNature();

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
                RowTextWithDropdown(
                  text: "Дыхание",
                  list: [
                    "Везикулярное",
                    "Пуэрильное",
                    "Жесткое",
                    "Бронхиальное",
                    "Патологическое",
                    "Ослабленное",
                    "Остутствует (где) ..."
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_16_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_16_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_16_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_16_CHECKBOX_4,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_16_CHECKBOX_5,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_16_CHECKBOX_6,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_16_CHECKBOX_7,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Хрипы",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: DropdownSelector(
                          items: ["Нет", "Сухие", "Влажные"],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey
                                .SECTION_22_SUBSECTION_17_CHECKBOX_1,
                            CheckBoxFieldKey
                                .SECTION_22_SUBSECTION_17_CHECKBOX_2,
                            CheckBoxFieldKey
                                .SECTION_22_SUBSECTION_17_CHECKBOX_3,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Характер, локализация",
                          fieldKey:
                              TextFieldKey.SECTION_22_SUBSECTION_17_TEXT_1,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 24),
                RowTextWithDropdown(
                  text: "Одышка",
                  list: ["Нет", "Испираторная", "Экспираторная", "Смешанная"],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_18_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_18_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_18_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_18_CHECKBOX_4,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Тоны сердца",
                  list: [
                    "Ритмичные",
                    "Аритмичные",
                    "Ясные",
                    "Глухие",
                    "Не прослушиваются"
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_19_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_19_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_19_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_19_CHECKBOX_4,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_19_CHECKBOX_5,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Шум",
                  list: [
                    "Систолический",
                    "Диастолический",
                    "Трение перикарда (локализация) ..."
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_20_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_20_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_20_CHECKBOX_3,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Пульс",
                  list: [
                    "Нормальный",
                    "Ритмичный",
                    "Аритмичный",
                    "Напряженный",
                    "Слабого наполнения",
                    "Нитевидный",
                    "Отсутствует (локализация) ..."
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_21_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_21_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_21_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_21_CHECKBOX_4,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_21_CHECKBOX_5,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_21_CHECKBOX_6,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_21_CHECKBOX_7,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Слизистая",
                  list: [
                    "Розовая",
                    "Бледная",
                    "Цианотичная",
                    "Гиперемированная ...",
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_22_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_22_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_22_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_22_CHECKBOX_4,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Язык",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Expanded(
                      child: TextCheckbox(
                          text: "Влажный",
                          checkKey: CheckBoxFieldKey
                              .SECTION_22_SUBSECTION_23_CHECKBOX_1),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextCheckbox(
                          text: "Сухой",
                          checkKey: CheckBoxFieldKey
                              .SECTION_22_SUBSECTION_23_CHECKBOX_2),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextCheckbox(
                          text: "Чистый",
                          checkKey: CheckBoxFieldKey
                              .SECTION_22_SUBSECTION_23_CHECKBOX_3),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextCheckbox(
                          text: "Обложен",
                          checkKey: CheckBoxFieldKey
                              .SECTION_22_SUBSECTION_23_CHECKBOX_4),
                    )
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Миндалины",
                  list: [
                    "Не увеличены",
                    "Гипертрофированы до ...",
                    "Отечны",
                    "Налетов нет",
                    "Налеты есть (характер,локализация) ..."
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_24_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_24_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_24_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_24_CHECKBOX_4,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_24_CHECKBOX_5,
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child:
                        Text(
                          "Налеты",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )),
                        SizedBox(height: 8),
                        Container(
                          child: DropdownSelector(
                            /**
                                КАКИЕ НАЛЕТЫ? В МЕДКАРТЕ, ВРОДЕ, НИЧЕГО НЕТ
                             **/
                            items: [],
                            itemsCheckBoxFieldKey: [


                            ],
                          ),
                        ),
                      ],
                    )),
                    SizedBox(width: 16),
                    Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Гипертрофированы до",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(height: 8),
                            Container(
                              child: RoundedInputField(
                                hintText: "Текст",
                                fieldKey: TextFieldKey.SECTION_22_SUBSECTION_24_TEXT_2,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
