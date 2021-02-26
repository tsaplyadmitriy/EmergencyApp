
import 'package:emergency_app/card_gen/card_generator.dart';
import 'package:emergency_app/components/dropdown_selector.dart';
import 'package:emergency_app/components/text_checkbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/rounded_input_field.dart';
import '../../components/dropdown_selector.dart';
import 'base_page.dart';

class PatientInfoPage extends StatelessWidget implements BasePage{

  String screenName = "Сведения о больном";

  PatientInfoPage();

  String get name => screenName;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
        padding: const EdgeInsets.fromLTRB(16.0,36.0,16.0,36.0),
        child: Column(
          children: [
            Container(
              height: 45,
              child: Row(children: [

                Text(
                  "5. Адрес вызова",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            SizedBox(height: 24),
            RowOf3Inputs(
                firstTitle: "Населенный пункт",
                secondTitle: "Улица",
                thirdTitle: "Дом",
                width: width,
                hintText: [
                  "Например, Сипарка",
                  "Например, Профсоюзная",
                  "Например, 12"
                ],
                fieldKey: [
                  TextFieldKey.SECTION_5_TEXT_1,
                  TextFieldKey.SECTION_5_TEXT_2,
                  TextFieldKey.SECTION_5_TEXT_3
                ]),
            SizedBox(height: 24),
            RowOf3Inputs(
                firstTitle: "Корпус",
                secondTitle: "Квартира",
                thirdTitle: "Комната",
                width: width,
                hintText: [
                  "Например, 2",
                  "Например, 120",
                  "Например, 2"
                ],
                fieldKey: [
                  TextFieldKey.SECTION_5_TEXT_4,
                  TextFieldKey.SECTION_5_TEXT_5,
                  TextFieldKey.SECTION_5_TEXT_6
                ]),
            SizedBox(height: 12),
            Divider(height: 24),


            Container(
              height: 45,
              child: Row(children: [
                Text(
                  "6. Сведения о больном",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            SizedBox(height: 24),
            RowOf3Inputs(
                firstTitle: "Фамилия",
                secondTitle: "Имя",
                thirdTitle: "Отчество",
                width: width,
                hintText: [
                  "Например, Иванов",
                  "Например, Иван",
                  "Например, Иванович"
                ],
                fieldKey: [
                  TextFieldKey.SECTION_5_TEXT_1,
                  TextFieldKey.SECTION_5_TEXT_2,
                  TextFieldKey.SECTION_5_TEXT_3
                ]),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: (width - 64) / 3,
                    child: Text(
                      "Дата рождения",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    width: (width - 64) / 3,
                    child: Text(
                      "Пол",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    width: (width - 64) / 3,
                    child: Text(
                      "Место работы",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: RoundedInputField(
                      hintText: "Например, 01.01.2021",
                      fieldKey: TextFieldKey.SECTION_6_TEXT_1,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 60.0,
                    child: DropdownSelector(
                      items: ["муж", "жен"],
                    )
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    child: RoundedInputField(
                      hintText: "Например, ООО Пятерочка",
                      fieldKey: TextFieldKey.SECTION_6_TEXT_3,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Divider(height: 24),


            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "7. Кто вызвал",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(children: [
              Expanded(
                child: Container(
                  height: 60.0,
                  child: DropdownSelector(
                    items: ["сам(а)", "муж", "жена",
                      "сын", "дочь", "родственник",
                      "коллега", "прохожий", "медицинский работник",
                      "сотрудник полиции"
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  child: RoundedInputField(
                    hintText: "Например, ООО Пятерочка",
                    fieldKey: TextFieldKey.SECTION_6_TEXT_3,
                  ),
                ),
              ),
            ],),
            Divider(height: 24),


            RowTitleAndInputField(
                textField: "8. Фельдшер принявший вызов",
                hintText: "Text",
                fieldKey: TextFieldKey.SECTION_8_TEXT_1
            ),
            Divider(height: 24),


            RowTitleAndInputField(
                textField: "9. Фельдшер передавший вызов",
                hintText: "Text",
                fieldKey: TextFieldKey.SECTION_9_TEXT_1
            ),
            Divider(height: 24),


            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "10. Место регистрации больного",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60.0,
                    child: DropdownSelector(
                      items: [
                        "житель города", "сельской местности",
                        "приезжий", "другое"
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    child: RoundedInputField(
                      hintText: "Адрес",
                      fieldKey: TextFieldKey.SECTION_10_TEXT_2
                    ),
                  ),
                ),
              ],
            ),
            Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(

                    alignment: Alignment.topLeft,
                    child: Text(
                      "11. Социальное положение больного",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 60.0,
                    child: DropdownSelector(
                      items: [
                        "работающий", "дошкольник","учащийся",
                        "безработный", "временно неработающий",
                        "беженец", "пенсионер", "военнослужащий",
                        "осужденный", "без определенного места жительства",
                        "другое"
                      ],
                    ),
                  ),
                ),
              ],
            ),



          ],
        ),
      );
  }
}

Widget RowTitleAndInputField({
  @required String textField,
  String hintText,
  @required TextFieldKey fieldKey,
  double height,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Container(
          height: height,
          child: Text(
            textField,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      SizedBox(width: 16),
      Expanded(
        child: Container(
          height: height,
          child: RoundedInputField(
            hintText: hintText,
            fieldKey: fieldKey,
          ),
        ),
      ),
    ],
  );
}


Widget RowOf3Inputs(
    {double height,
      @required String firstTitle,
      @required String secondTitle,
      @required String thirdTitle,
      @required double width,
      @required List<String> hintText,
      @required List<TextFieldKey> fieldKey}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Expanded(
            child: Container(
              child: Text(
                firstTitle,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                secondTitle,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                thirdTitle,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 8.0),
      Row(
        children: [
          Expanded(
            child: Container(
              height: height,
              child: RoundedInputField(
                hintText: hintText[0],
                fieldKey: fieldKey[0],
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Container(
              height: height,
              child: RoundedInputField(
                hintText: hintText[1],
                fieldKey: fieldKey[1],
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Container(
              height: height,
              child: RoundedInputField(
                hintText: hintText[2],
                fieldKey: fieldKey[2],
              ),
            ),
          ),
        ],
      )
    ],
  );
}
