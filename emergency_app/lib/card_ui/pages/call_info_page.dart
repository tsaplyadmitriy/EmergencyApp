import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/rounded_input_field.dart';
import 'base_page.dart';
import 'package:emergency_app/card_gen/card_generator.dart';

class CallInfoPage extends StatelessWidget implements BasePage {
  @override
  String screenName = "Информация о вызове";

  CallInfoPage();

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
                beautifulRow(
                  textField: "1. Номер фельдшера по приему вызова",
                  width: width,
                  hintText: "Номер",
                ),
                Divider(
                  height: 24,
                ),
                beautifulRow(
                    textField: "2. Номер станции (подстанции), отделения",
                    width: width,
                    hintText: "Номер"),
                Divider(
                  height: 24,
                ),
                beautifulRow(
                    textField: "3. Номер бригады скорой медицинской помощи",
                    width: width,
                    hintText: "Номер"),
                Divider(
                  height: 24,
                ),
                Container(
                  height: 45,
                  child: Row(children: [
                    Text(
                      "4. Время (например, 07:23 или 15:48)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Text(
                      "1 колонка",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                beautifulRowOfInputs(width: width, hintText: [
                  "Приема вызова",
                  "Передачи вызова бригаде",
                  "Ожидания бригады"
                ]),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "2 колонка",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                beautifulRowOfInputs(width: width, hintText: [
                  "Выезда на вызов",
                  "Прибытия на место вызова",
                  "Доезда до вызова"
                ]),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "3 колонка",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                beautifulRowOfInputs(width: width, hintText: [
                  "Начала транспортировки",
                  "Прибытия в мед. организ.",
                  "У больного"
                ]),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "4 колонка",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                beautifulRowOfInputs(width: width, hintText: [
                  "Окончания вызова",
                  "Возвращения на станцию",
                  "Общее на вызов"
                ]),
              ],
            ))
      ],
    );
  }
}

Widget beautifulRow({
  @required String textField,
  String hintText,
  @required double width,
  @required TextFieldKey fieldKey,
  double height,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: height,
        width: (width - 32) / 2,
        child: Text(
          textField,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        height: height,
        width: (width - 32) / 2,
        child: RoundedInputField(
          hintText: hintText,
        ),
      ),
    ],
  );
}

Widget beautifulRowOfInputs(
    {double height, @required double width, @required List<String> hintText}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: height,
        width: (width - 64) / 3,
        child: RoundedInputField(
          hintText: hintText[0],
        ),
      ),
      Container(
        height: height,
        width: (width - 64) / 3,
        child: RoundedInputField(
          hintText: hintText[1],
        ),
      ),
      Container(
        height: height,
        width: (width - 64) / 3,
        child: RoundedInputField(
          hintText: hintText[2],
        ),
      ),
    ],
  );
}
