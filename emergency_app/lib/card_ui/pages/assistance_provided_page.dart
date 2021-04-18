import 'package:emergency_app/components/GridViewItem.dart';
import 'package:emergency_app/components/RowTextWithDropdown.dart';
import 'package:emergency_app/components/RowTitleAndInputField.dart';
import 'package:emergency_app/components/TitleAndDropbox.dart';
import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:emergency_app/components/text_checkbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rounded_input_field.dart';
import 'base_page.dart';
import 'package:emergency_app/card_gen/card_generator.dart';

class AssistanceProvided extends StatelessWidget implements BasePage {
  @override
  String screenName = "Оказанная помощь";
  String test = "";

  AssistanceProvided();

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
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("24. Осложнения",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GridView.count(
                    crossAxisCount: 3,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 12,
                    childAspectRatio: TextCheckbox.width/TextCheckbox.height,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      TextCheckbox(text: "Клиническая смерть", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_1),
                      TextCheckbox(text: "Шок", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_2),
                      TextCheckbox(text: "Кома", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_3),
                      TextCheckbox(text: "Сердечная астма", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_4),
                      TextCheckbox(text: "Эмболия", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_5),
                      TextCheckbox(text: "Отек легких", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_6),
                      TextCheckbox(text: "Асфиксия", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_7),
                      TextCheckbox(text: "Аспирация", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_8),
                      TextCheckbox(text: "Острое кровотечение", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_9),
                      TextCheckbox(text: "Коллапс", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_10),
                      TextCheckbox(text: "Анурия", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_11),
                      TextCheckbox(text: "Нарушение сердесного ритма", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_12),
                      TextCheckbox(text: "Судороги", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_13),
                      TextCheckbox(text: "Острая дыхательная недостаточность", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_14),
                      TextCheckbox(text: "Синдром полиорганной недостаточности", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_15),
                      TextCheckbox(text: "Психомоторное возбуждение", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_16),
                      TextCheckbox(text: "Токсикоз", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_17),
                      TextCheckbox(text: "Суицидальный настрой", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_18),
                      TextCheckbox(text: "Энцефолопатия", checkKey: CheckBoxFieldKey.SECTION_24_CHECKBOX_19),
                    ]),
                SizedBox(height: 24),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Другое",
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                ),
                SizedBox(height: 8),
                RoundedInputField(
                    hintText: "Текст"),
                Divider(
                  height: 24,
                ),
                SizedBox(
                  height: 67,
                  child: TitleAndDropBox(
                  titleText: "25. Эффективность мероприятий при осложнении",
                  fontSize: 16,
                  dropBoxCases: [
                    "Осложение устранено", "Улучшение",
                    "Без эффекта"
                  ],
                  checkboxFields: [
                    CheckBoxFieldKey.SECTION_25_CHECKBOX_1,
                    CheckBoxFieldKey.SECTION_25_CHECKBOX_2,
                    CheckBoxFieldKey.SECTION_25_CHECKBOX_3
                  ],
                ),
                ),

                Divider(height: 24.0),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "26. Оказанная помощь на месте вызова",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 8),
                RoundedInputField(
                    hintText: "Текст", fieldKey: TextFieldKey.SECTION_26_TEXT_1),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Использовано на месте вызова",
                        style: TextStyle(fontSize: 14)),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GridView.count(
                    crossAxisCount: 3,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 12,
                    childAspectRatio: TextCheckbox.width/TextCheckbox.height,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      TextCheckbox(text: "Дефибриллятор", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_1),
                      TextCheckbox(text: "Эл. кардиограф", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_2),
                      TextCheckbox(text: "Телеальтон", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_3),
                      TextCheckbox(text: "Кисл. ингалятор", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_4),
                      TextCheckbox(text: "Аппарат ИВЛ", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_5),
                      TextCheckbox(text: "Небулайзер", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_6),
                      TextCheckbox(text: "Глюкометр", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_7),
                      TextCheckbox(text: "Дозатор", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_8),
                      TextCheckbox(text: "Пульсоксиметр", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_9),
                      TextCheckbox(text: "Интубация", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_10),
                      TextCheckbox(text: "Инфузия", checkKey: CheckBoxFieldKey.SECTION_26_CHECKBOX_11),
                    ]),
                Divider(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "27. Оказанная помощь в автомобиле СМП при транспортировке",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 8),
                RoundedInputField(
                    hintText: "Текст", fieldKey: TextFieldKey.SECTION_27_TEXT_1),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Использовано при транспортировке",
                        style: TextStyle(
                        fontSize: 14),),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                GridView.count(
                    crossAxisCount: 3,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 12,
                    childAspectRatio: TextCheckbox.width/TextCheckbox.height,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      TextCheckbox(text: "Дефибриллятор", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_1),
                      TextCheckbox(text: "Эл. кардиограф", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_2),
                      TextCheckbox(text: "Телеальтон", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_3),
                      TextCheckbox(text: "Кисл. ингалятор", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_4),
                      TextCheckbox(text: "Аппарат ИВЛ", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_5),
                      TextCheckbox(text: "Небулайзер", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_6),
                      TextCheckbox(text: "Глюкометр", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_7),
                      TextCheckbox(text: "Дозатор", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_8),
                      TextCheckbox(text: "Пульсоксиметр", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_9),
                      TextCheckbox(text: "Интубация", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_10),
                      TextCheckbox(text: "Инфузия", checkKey: CheckBoxFieldKey.SECTION_27_CHECKBOX_11),
                    ]),
                Divider(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "28. Эффективность проведенных мероприятий",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Expanded(child:
                // Row(
                //   children: [
                //     Expanded(child:
                //     Column(children: [
                //       Expanded(
                //           child: Container(
                //               child: Text(
                //                 "АД, мм. рт. ст.",
                //                 style: TextStyle(
                //                   fontSize: 14,
                //                   fontWeight: FontWeight.bold,
                //                 ),
                //               )
                //           )
                //       ),
                //       SizedBox(height: 8,),
                //       Expanded(
                //           child: Container(
                //             child:RoundedInputField(
                //               hintText: "Например, 120/90",
                //               fieldKey: TextFieldKey.SECTION_21_TEXT_2,
                //             ),
                //           )
                //       ),
                //     ],)),
                //     SizedBox(width: 16.0),
                //     Expanded(child:
                //     Column(children: [
                //       Expanded(
                //           child: Container(
                //               child: Text(
                //                 "ЧСС, мин.",
                //                 style: TextStyle(
                //                   fontSize: 14,
                //                   fontWeight: FontWeight.bold,
                //                 ),
                //               )
                //           )
                //       ),
                //       SizedBox(height: 8,),
                //       Expanded(
                //           child: Container(
                //             child:RoundedInputField(
                //               hintText: "Например, 75",
                //               fieldKey: TextFieldKey.SECTION_21_TEXT_2,
                //             ),
                //           )
                //       ),
                //     ],))
                //   ],
                // )),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              child: Text(
                                "АД, мм. рт. ст.",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )
                          )
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                            child: Text(
                              "ЧСС, мин.",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            child:RoundedInputField(
                              hintText: "Например, 120/90",
                              fieldKey: TextFieldKey.SECTION_21_TEXT_2,
                            ),
                          )
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                              child:RoundedInputField(
                                hintText: "Например, 75",
                                fieldKey: TextFieldKey.SECTION_21_TEXT_3,
                              )
                          ))
                    ],
                  ),
                ),

                SizedBox(
                  height: 24,
                ),

                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              child: Text(
                                "Пульс, уд. в мин.",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )
                          )
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                            child: Text(
                              "ЧДД, мин.",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            child:RoundedInputField(
                              hintText: "Например, 80",
                              fieldKey: TextFieldKey.SECTION_21_TEXT_2,
                            ),
                          )
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                              child:RoundedInputField(
                                hintText: "Например, 16",
                                fieldKey: TextFieldKey.SECTION_21_TEXT_3,
                              )
                          ))
                    ],
                  ),
                ),


                SizedBox(
                  height: 24,
                ),

                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              child: Text(
                                "Температура тела, °С",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          )
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                            child: Text(
                              "Пульсоксиметрия, %",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                            child: Text(
                              "Глюкометрия",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            child:RoundedInputField(
                              hintText: "Например, 36.7",
                              fieldKey: TextFieldKey.SECTION_21_TEXT_2,
                            ),
                          )
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                              child:RoundedInputField(
                                hintText: "Например, 98",
                                fieldKey: TextFieldKey.SECTION_21_TEXT_3,
                              )
                          )),
                      SizedBox(width: 16.0),
                      Expanded(
                          child: Container(
                              child:RoundedInputField(
                                hintText: "Например, 5.5",
                                fieldKey: TextFieldKey.SECTION_21_TEXT_3,
                              )
                          ))
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
