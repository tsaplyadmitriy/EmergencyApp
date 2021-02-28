

import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:emergency_app/components/rounded_input_field.dart';
import 'package:emergency_app/components/text_checkbox.dart';
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
    return ListView(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: width,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(16),
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
            SizedBox(height: 15,),
          Container(

          width: width,
            //margin: EdgeInsets.only(top: 30),
            child: Row(

              children: [

                DropdownSelector(
                  width: 350,
                  items: [
                    "Diagnosis 1",
                    "Diagnosis 2",
                    "Diagnosis 3",
                    "Diagnosis 4",
                    "Diagnosis 5",
                    "Diagnosis 6"
                  ],
                  currentItem: "Diagnosis 6",
                ),
                SizedBox(width: 30,),
                Container(
                    width: 360,
                    child:RoundedInputField(
                  hintText: "Название диагноза",
                  fieldKey: TextFieldKey.SECTION_23_SUBSECTION_1_TEXT_3

                )
                )


              ],
            ),
          ),

            Container(

              margin: EdgeInsets.only(top: 15),
              width: width,
              //margin: EdgeInsets.only(top: 30),
              child: Row(

                children: [

                  Container(
                      width: 375,
                      child:RoundedInputField(
                          hintText: "Код по МКБ-10",
                          fieldKey: TextFieldKey.SECTION_23_SUBSECTION_1_TEXT_1

                      )
                  ),
                  SizedBox(width: 30,),
                  Container(
                      width: 360,
                      child:RoundedInputField(
                          hintText: "Код",
                          fieldKey: TextFieldKey.SECTION_23_SUBSECTION_1_TEXT_2

                      )
                  )


                ],
              ),
            ),
            SizedBox(height: 45,),
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
            SizedBox(height: 15,),
            ConstrainedBox(
             constraints: BoxConstraints(

                 maxHeight: 300.0,
             ),
            child: RoundedInputField(
                hintText: "Текст",
                fieldKey: TextFieldKey.SECTION_20_TEXT_1

            ),
            ),



            Container(

              margin: EdgeInsets.only(top: 10),
              child: Row(children: [
                Text(
                  "Начало заболевания",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            SizedBox(height: 15,),
            RoundedInputField(
                  hintText: "Напримпер, до 2х часов",
                  fieldKey: TextFieldKey.SECTION_20_TEXT_2

              ),
            SizedBox(height: 45,),
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

            SizedBox(height: 15,),
            ConstrainedBox(
              constraints: BoxConstraints(

                maxHeight: 300.0,
              ),
              child: RoundedInputField(
                  hintText: "Текст",
                  fieldKey: TextFieldKey.SECTION_21_TEXT_1

              ),
            ),
            SizedBox(height: 10,),
            Container(

              width: width,
              //margin: EdgeInsets.only(top: 30),
              child: Row(

                children: [


            Container(

              margin: EdgeInsets.only(top: 15),

              //margin: EdgeInsets.only(top: 30),
              child: Row(

                children: [

                  Container(
                      width: 375,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                              "Эпид. анамнез",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RoundedInputField(
                          hintText: "Текст",
                          fieldKey: TextFieldKey.SECTION_21_TEXT_2

                      )]
                      )
                  ),
                  SizedBox(width: 30,),
                  Container(
                      width: 360,
                      child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                        Text(
                          "Аллергологический анамнез",

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RoundedInputField(
                          hintText: "Текст",
                          fieldKey: TextFieldKey.SECTION_21_TEXT_3

                      )])
                  )


                ],
              ),
            ),


        ],),
    )

    ]))],);
  }
}
