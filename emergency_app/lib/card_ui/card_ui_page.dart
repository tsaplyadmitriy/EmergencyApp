import 'package:carousel_slider/carousel_slider.dart';
import 'package:emergency_app/card_ui/pages/CCC_page.dart';
import 'package:emergency_app/card_ui/pages/ECG_page.dart';
import 'package:emergency_app/card_ui/pages/assistance_provided_page.dart';
import 'package:emergency_app/card_ui/pages/bag_page.dart';
import 'package:emergency_app/card_ui/pages/base_page.dart';
import 'package:emergency_app/card_ui/pages/breathing_nature_page.dart';
import 'package:emergency_app/card_ui/pages/call_details_page.dart';
import 'package:emergency_app/card_ui/pages/call_info_page.dart';
import 'package:emergency_app/card_ui/pages/check_out_result_page.dart';
import 'package:emergency_app/card_ui/pages/diagnosis_page.dart';
import 'package:emergency_app/card_ui/pages/general_condition_page.dart';
import 'package:emergency_app/card_ui/pages/lungth_page.dart';
import 'package:emergency_app/card_ui/pages/neurological_status_page.dart';
import 'package:emergency_app/card_ui/pages/notes_page.dart';
import 'package:emergency_app/card_ui/pages/patient_info_page.dart';
import 'package:emergency_app/card_ui/pages/skin_layers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardUIPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardUIPage();
}

class _CardUIPage extends State<CardUIPage> {
  final callInfoPage = CallInfoPage();
  BasePage currentPage;

  @override
  void initState() {
    currentPage = CallInfoPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        title: Text(
          currentPage.name,
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Roboto",
              fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: currentPage,
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: SafeArea(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Container(
              //   height: 120,
              //   child: DrawerHeader(
              //     child: Text(
              //       'Меню',
              //       style: TextStyle(fontSize: 24),
              //     ),
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              Divider(),
              ListTile(
                title: Text('Информация о вызове'),
                onTap: () {
                  currentPage = callInfoPage;
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Сведения о больном'),
                onTap: () {
                  currentPage = PatientInfoPage();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Сведения о вызове'),
                onTap: () {
                  currentPage = CallDetails();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Диагноз'),
                onTap: () {
                  currentPage = DiagnosisPage();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),

              Divider(),
              ListTile(
                title: Text('Общее состояние'),
                onTap: () {
                  currentPage = GeneralConditionPage();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Неврологический статус'),
                onTap: () {
                  currentPage = NeurologicalStatus();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Кожные покровы'),
                onTap: () {
                  currentPage = SkinLayers();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Характер дыхания'),
                onTap: () {
                  currentPage = BreathingNature();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('ССС'),
                onTap: () {
                  currentPage = CCC();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('ЭКГ'),
                onTap: () {
                  currentPage = ECGPage();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Оказанная помощь'),
                onTap: () {
                  currentPage = AssistanceProvided();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Результат выезда'),
                onTap: () {
                  currentPage = CheckOutResult();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Примечания'),
                onTap: () {
                  currentPage = NotesPage();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
              Divider(),
              ListTile(
                title: Text('Сумка'),
                onTap: () {
                  currentPage = BagPage();
                  Navigator.pop(context);
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
