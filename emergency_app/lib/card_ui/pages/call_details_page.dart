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

class CallDetails extends StatelessWidget implements BasePage {
  @override
  String screenName = "Результат выезда";
  String test = "";

  CallDetails();

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
                RowTextWithDropdown(text: "12. Повод к вызову", list: [
                  "Несчастный случай",
                  "Патология беременности",
                  "Экстренная перевозка",
                  "Роды",
                  "Острое внезапное заболевание",
                  "Обострение хроническое заболевание",
                  "Плановая перевозка",
                  "Другое"
                ], keylist: [
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_1,
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_2,
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_3,
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_4,
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_5,
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_6,
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_7,
                  CheckBoxFieldKey.SECTION_12_CHECKBOX_8,
                ]),
                Divider(height: 24,),
                RowTextWithDropdown(text: "13. Вызов", list: [
                  "Первичный",
                  "Повторный",
                  "Вызов на себя другой бригады",
                ], keylist: [
                  CheckBoxFieldKey.SECTION_13_CHECKBOX_1,
                  CheckBoxFieldKey.SECTION_13_CHECKBOX_2,
                  CheckBoxFieldKey.SECTION_13_CHECKBOX_3,
                ]),
                Divider(height: 24,),
                RowTextWithDropdown(text: "14. Место получения вызова бригадой СМП", list: [
                  "Станция (подстанция)",
                  "По телефону",
                  "По рации",
                ], keylist: [
                  CheckBoxFieldKey.SECTION_14_CHECKBOX_1,
                  CheckBoxFieldKey.SECTION_14_CHECKBOX_2,
                  CheckBoxFieldKey.SECTION_14_CHECKBOX_3,
                ]),
                Divider(height: 24,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "15. Причины выезда с опозданием, отсутствие",
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
                          items: ["Транспорта", "Врача", "Фельдшера", "Бригады соответствующего профиля", "Другое"],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey
                                .SECTION_15_CHECKBOX_1,
                            CheckBoxFieldKey
                                .SECTION_15_CHECKBOX_2,
                            CheckBoxFieldKey
                                .SECTION_15_CHECKBOX_3,
                            CheckBoxFieldKey
                                .SECTION_15_CHECKBOX_4,
                            CheckBoxFieldKey
                                .SECTION_15_CHECKBOX_5,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Другое",
                          fieldKey:
                          TextFieldKey.SECTION_15_TEXT_1,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 24,),
                RowTextWithDropdown(text: "16.  Состав бригады СМП", list: [
                  "Врач",
                  "Один фельдшер",
                  "Два фельдшера",
                  "Санитар",
                  "Водитель"
                ], keylist: [
                  CheckBoxFieldKey.SECTION_16_CHECKBOX_1,
                  CheckBoxFieldKey.SECTION_16_CHECKBOX_2,
                  CheckBoxFieldKey.SECTION_16_CHECKBOX_3,
                  CheckBoxFieldKey.SECTION_16_CHECKBOX_4,
                  CheckBoxFieldKey.SECTION_16_CHECKBOX_5,
                ]),
                Divider(height: 24,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "17. Место вызова",
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
                          items: ["Улица", "Квартира", "Рабочее место", "Общественное место", "Школа",
                          "Дошкольное учреждение", "Медицинское учреждение","Федеральная автотрасса", "Другое"],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_1,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_2,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_3,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_4,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_5,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_6,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_7,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_8,
                            CheckBoxFieldKey
                                .SECTION_17_CHECKBOX_9,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Другое",
                          fieldKey:
                          TextFieldKey.SECTION_17_TEXT_1,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 24,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "18. Причина несчастного случая",
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
                          items: ["Криминальная", "Дорожно-транспортное происшествие", "Бытовая", "Производственная", "Сельскохозяйственная",
                            "Спортивная", "Отравление","Утопление", "Суицид", "Пожар", "Другое"],
                          itemsCheckBoxFieldKey: [
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_1,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_2,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_3,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_4,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_5,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_6,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_7,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_8,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_9,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_10,
                            CheckBoxFieldKey
                                .SECTION_18_CHECKBOX_11,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        child: RoundedInputField(
                          hintText: "Другое",
                          fieldKey:
                          TextFieldKey.SECTION_18_TEXT_1,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 24,),
                RowTextWithDropdown(text: "19. Наличие клиники опьянения", list: [
                 "Нет",
                  "Да"
                ], keylist: [
                  CheckBoxFieldKey.SECTION_19_CHECKBOX_1,
                  CheckBoxFieldKey.SECTION_19_CHECKBOX_2,
                ]),

                ]
        )
        )],
    );
  }
}
