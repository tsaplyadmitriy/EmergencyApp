import 'package:emergency_app/components/GridViewItem.dart';
import 'package:emergency_app/components/RowTextWithDropdown.dart';
import 'package:emergency_app/components/RowTitleAndInputField.dart';
import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:emergency_app/components/text_checkbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rounded_input_field.dart';
import 'base_page.dart';
import 'package:emergency_app/card_gen/card_generator.dart';

class CCC extends StatelessWidget implements BasePage {
  @override
  String screenName = "ССС";
  String test = "";

  CCC();

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
                RowTitleAndInputField(textField: "Рабочее АД, мм.рт.ст.", width: width,hintText: "Например, 120/90"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "АД, мм.рт.ст.", width: width, hintText: "Например, 120/90"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "ЧСС, мин.", width: width,hintText: "Например, 75"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "Пульс, удары в мин.", width: width,hintText: "Например, 80"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "ЧДД, мин.", width: width, hintText: "Например, 16"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "Температура тела, °С", width: width,hintText: "Например, 36.7"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "Пульсоксиметрия, %", width: width,hintText: "Например, 98"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "Глюкометрия", width: width,hintText: "Например, 5.5"),
                Divider(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Живот",
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
                          text: "Мягкий",
                          ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextCheckbox(
                          text: "Напряженный",
                          ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextCheckbox(
                          text: "Безболезненный",

                              ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextCheckbox(
                          text: "Болезненный",

                              ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextCheckbox(
                          text: "Вздут",

                              ),
                    )
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
                            Text(
                              "Участвует в дыхании",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              child: DropdownSelector(

                                items: ["Да", "Нет"],
                                itemsCheckBoxFieldKey: [
                                  /**
                                      Какие ключи здесь??
                                   **/
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
                                "Симптомы раздражения брюшины",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(height: 8,),
                            Container(
                              child: DropdownSelector(
                                items: ["Нет", "Есть"],
                                itemsCheckBoxFieldKey: [
                                  /**
                                      Какие ключи здесь??
                                   **/
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),


                SizedBox(height: 24),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Болезненность при пальпации",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: DropdownSelector(
                          items: ["Нет", "Слабая", "Выраженная"],
                          itemsCheckBoxFieldKey: [
                            /**
                                Какие ключи здесь??
                             **/
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Локализация",
                          /**
                              Какие текстовые ключи  (fieldkey) здесь??
                           **/
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Другие симптомы",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                RoundedInputField(
                    hintText: "Текст", fieldKey: null),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Печень",
                  list: ["Не увеличена", "Увеличена"],
                  keylist: [
                    /**
                        Какие текстовые ключи  (fieldkey) здесь??
                     **/
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTextWithDropdown(
                  text: "Селезёнка",
                  list: ["Не увеличена", "Увеличена"],
                  keylist: [
                    /**
                        Какие текстовые ключи  (fieldkey) здесь??
                     **/
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "Мочеиспускание", width: width,hintText: "Текст"),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "Стул", width: width,hintText: "Текст"),

              ],
            ))
      ],
    );
  }
}
