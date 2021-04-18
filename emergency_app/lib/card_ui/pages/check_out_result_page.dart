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

class CheckOutResult extends StatelessWidget implements BasePage {
  @override
  String screenName = "Результат выезда";
  String test = "";

  CheckOutResult();

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
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Результат оказания скорой медицинской помощи",
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
                          items: ["Улучшение", "Без эффекта", "Ухудшение"],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey.SECTION_32_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_32_CHECKBOX_2,
                            CheckBoxFieldKey.SECTION_32_CHECKBOX_3,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Ухудшение за счет",
                          fieldKey: TextFieldKey.SECTION_32_TEXT_1,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Больной",
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
                          items: ["Нуждается в активном выезде через", "Подлежит активному посещению врачом поликлиники", "Другое"],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey.SECTION_33_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_33_CHECKBOX_2,
                            CheckBoxFieldKey.SECTION_33_CHECKBOX_3,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Другое",
                          fieldKey: TextFieldKey.SECTION_33_TEXT_1,
                        ),
                      ),
                    ),

                  ],
                ),
                Divider(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Способ доставки больного в автомобиль скорой медицинской помощи",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
            Row(
              children: [
                Expanded(child:
               Container(
                        child: DropdownSelector(
                          items: ["На носилках", "На руках", "На других подрудчных средствах", "Передвигался самостоятельно"],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey.SECTION_34_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_34_CHECKBOX_2,
                            CheckBoxFieldKey.SECTION_34_CHECKBOX_3,
                            CheckBoxFieldKey.SECTION_34_CHECKBOX_4,
                          ],
                        ),
                      )),
                Expanded(child: SizedBox(width: 16),)
                    ]),
                    
                Divider(
                  height: 24,
                ),


                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Выполненный вызов",
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
                          items: ["Оказана помощь, больной оставлен на месте",
                          "Передан специализированной бригаде СМП",
                            "Доставлен в травматологический пункт",
                          "Доставлен в больницу, время приема больного",
                            "Отказ в госпитализации стационаром",
                            "Смерть в присутствии бригады СМП, время констатации смерти",
                            "Смерть в автомобиле СМП, время констатации смерти"
                          ],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_1_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_2_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_3_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_4_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_5_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_6_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_7_CHECKBOX_1,

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Номер бригады",
                          fieldKey: TextFieldKey.SECTION_35_SUBSECTION_2_TEXT_1,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Время",
                          fieldKey: TextFieldKey.SECTION_35_SUBSECTION_2_TEXT_2,
                        ),
                      ),
                    ),
                  ],
                ),

                Divider(height: 24,),

                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Безрезультатный вызов",
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
                          items: ["Больной не найден на месте",
                            "Отказ от помощи (осмотра)",
                            "Ложный вызов",
                            "Адрес не найден",
                            "Смерть до приезда бригады СМП, время констатации смерти",
                            "Больной увезен до прибытия бригады СМП",
                            "Выезд отменен",
                            "Пациент практически здоров",
                            "Больной обслужен врачом поликлиники до прибытия бригады СМП"
                          ],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_9_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_9_CHECKBOX_2,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_9_CHECKBOX_3,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_10_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_10_CHECKBOX_2,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_11_CHECKBOX_1,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_11_CHECKBOX_2,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_11_CHECKBOX_3,
                            CheckBoxFieldKey.SECTION_35_SUBSECTION_12_CHECKBOX_1,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Время констатации смерти",
                          fieldKey: TextFieldKey.SECTION_36_TEXT_1,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 24,
                ),
                RowTitleAndInputField(textField: "Километраж выезда", width: width,hintText: "Число"),

              ],
            ))
      ],
    );
  }
}
