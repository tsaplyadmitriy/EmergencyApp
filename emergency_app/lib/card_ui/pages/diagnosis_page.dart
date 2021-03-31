import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:emergency_app/components/rounded_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_page.dart';

class DiagnosisPage extends StatelessWidget implements BasePage{

  String screenName = "Диагноз";

  DiagnosisPage();

  String get name => screenName;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView(children:[
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0,36.0,16.0,36.0),
        child: Container(
            child: Column(
                children: [
                  Container(

                    child: Row(children: [
                      Text(
                        "23. Диагноз",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              child: Text(
                                "Код по МКБ-10",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            )
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                            child: Container(
                              child: Text(
                              "Код КСГ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    width: width,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: DropdownSelector(
                                items: ["код A", "код B", "код C"]                             // Just DropDown(not check box)
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            child: DropdownSelector(
                                items: ["1", "2", "3"]                                        // Just DropDown(not check box)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                      child:
                      RoundedInputField(
                        hintText: "Описание",
                        fieldKey: TextFieldKey.SECTION_23_SUBSECTION_1_TEXT_1,
                      ),
                  ),
                  Divider(height: 24),
                  SizedBox(height: 12),
                  Container(


                    child: Row(children: [
                      Text(
                        "20. Жалобы",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 12,),
                  ConstrainedBox(
                    constraints: BoxConstraints(

                      maxHeight: 300.0,
                    ),
                    child: RoundedInputField(
                        hintText: "Текст",
                        fieldKey: TextFieldKey.SECTION_20_TEXT_1

                    ),
                  ),

                  SizedBox(height: 24,),

                  Container(

                    margin: EdgeInsets.only(top: 10),
                    child: Row(children: [
                      Text(
                        "Начало заболевания",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 8,),
                  RoundedInputField(
                      hintText: "Напримпер, до 2х часов",
                      fieldKey: TextFieldKey.SECTION_20_TEXT_2

                  ),
                  Divider(height: 24),
                  SizedBox(height: 12),
                  Container(

                    child: Row(children: [
                      Text(
                        "21. Анамнез",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),

                  SizedBox(height: 12,),
                  ConstrainedBox(
                    constraints: BoxConstraints(

                      maxHeight: 300.0,
                    ),
                    child: RoundedInputField(
                        hintText: "Текст",
                        fieldKey: TextFieldKey.SECTION_21_TEXT_1

                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                                child: Text(
                                  "Эпид. анамнез",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            )
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                            child: Container(
                              child: Text(
                                "Аллергологический анамнез",
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
                                  hintText: "Текст",
                                  fieldKey: TextFieldKey.SECTION_21_TEXT_2,
                                ),
                            )
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                            child: Container(
                              child:RoundedInputField(
                                hintText: "Текст",
                                fieldKey: TextFieldKey.SECTION_21_TEXT_3,
                                )
                            ))
                      ],
                    ),
                  ),
                ])),
      )],
    );
  }
}
