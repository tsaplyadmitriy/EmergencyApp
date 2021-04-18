import 'package:emergency_app/components/GridViewItem.dart';
import 'package:emergency_app/components/RowTextWithDropdown.dart';
import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rounded_input_field.dart';
import 'base_page.dart';
import 'package:emergency_app/card_gen/card_generator.dart';

class NeurologicalStatus extends StatelessWidget implements BasePage {
  @override
  String screenName = "Неврологический статус";

  String test = "";

  NeurologicalStatus();

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
              text: "Менингиальные знаки",
              list: [
                "Есть",
                "Нет",
              ],
              keylist: [
                CheckBoxFieldKey.SECTION_22_SUBSECTION_4_CHECKBOX_1,
                CheckBoxFieldKey.SECTION_22_SUBSECTION_4_CHECKBOX_2,
              ],
            ),
                Divider(
                  height: 24,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Зрачки",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GridView.count(
                    crossAxisCount: 3,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 4,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      GridViewItem(
                        text: "Реакция на свет",
                        list: ["Есть", "Нет"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_1,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_2
                        ],
                      ),

                      GridViewItem(
                        text: "Нистагм",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_3,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_4
                        ],
                      ),
                      GridViewItem(
                        text: "Диплопия",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_5,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_6
                        ],
                      ),
                      GridViewItem(
                        text: "Мидриаз",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_7,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_8
                        ],
                      ),
                      GridViewItem(
                        text: "Миоз",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_9,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_10
                        ],
                      ),
                      GridViewItem(
                        text: "Паралич взора",
                        list: ["Нет", "Вправо", "Влево"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_11,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_12,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_13
                        ],
                      ),
                      GridViewItem(
                        text: "Анизокория",
                        list: ["Нет", "Есть", "D>S", "D<S"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_14,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_15,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_16,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_17
                        ],
                      ),
                      GridViewItem(
                        text: "Ассиметрия лица",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_18,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_19
                        ],
                      ),
                      GridViewItem(
                        text: "Дисфагия",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_20,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_21
                        ],
                      ),
                      GridViewItem(
                        text: "Афония",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_22,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_23
                        ],
                      ),
                      GridViewItem(
                        text: "Афазия",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_24,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_25
                        ],
                      ),
                      GridViewItem(
                        text: "Дизартрия",
                        list: ["Нет", "Есть"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_26,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_27
                        ],
                      ),
                      GridViewItem(
                        text: "Отклонение языка",
                        list: ["Нет", "Влево", "Вправо"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_28,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_29,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_30
                        ],
                      ),
                      GridViewItem(
                        text: "Птоз",
                        list: ["Нет", "Справа", "Слева"],
                        keylist: [
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_31,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_32,
                          CheckBoxFieldKey.SECTION_22_SUBSECTION_5_CHECKBOX_33
                        ],
                      ),
                    ]),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Чувствительность",
                  list: [
                    "Не нарушена",
                    "Понижена",
                    "Отсутствует",
                    "Гиперстезия"
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_6_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_6_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_6_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_6_CHECKBOX_4,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Сухожильные рефлексы",
                  list: [
                    "Живые-равные",
                    "Гипорефлексия",
                    "Арефлексия",
                    "Гиперрефлексия"
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_7_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_7_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_7_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_7_CHECKBOX_4,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Координация движения",
                  list: [
                    "Не нарушена",
                    "Положительная пальценосовая проба",
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_8_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_8_CHECKBOX_2,
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
                          "В позе Ромберга",
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8,),
                        Container(
                          // height: 60.0,
                          child: DropdownSelector(
                            items: ["Устойчив", "Не устойчив", "Тремор"],
                            itemsCheckBoxFieldKey: [
                              CheckBoxFieldKey
                                  .SECTION_22_SUBSECTION_8_CHECKBOX_3,
                              CheckBoxFieldKey
                                  .SECTION_22_SUBSECTION_8_CHECKBOX_4,
                              CheckBoxFieldKey
                                  .SECTION_22_SUBSECTION_8_CHECKBOX_5,
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
                RowTextWithDropdown(
                  text: "Судороги",
                  list: [
                    "Отсутствуют",
                    "Клонические",
                    "Тонические",
                    "Клонико-тонические"
                  ],
                  keylist: [
                  CheckBoxFieldKey.SECTION_22_SUBSECTION_9_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_9_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_9_CHECKBOX_3,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_9_CHECKBOX_4,
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Патологические рефлексы",
                  list: [
                    "Нет",
                    "Есть",
                  ],
                  keylist: [
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_10_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_22_SUBSECTION_10_CHECKBOX_2,
                  ],
                ),
              ],
            ))
      ],
    );
  }
}

