import 'package:carousel_slider/carousel_slider.dart';
import 'package:emergency_app/card_ui/pages/base_page.dart';
import 'package:emergency_app/card_ui/pages/call_info_page.dart';
import 'package:emergency_app/card_ui/pages/lungth_page.dart';
import 'package:emergency_app/card_ui/pages/patient_info_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class CardUIPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardUIPage();




}

class _CardUIPage extends State<CardUIPage>  {


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
          title: Text(currentPage.name,style: TextStyle(color: Colors.black,fontFamily: "Roboto",fontWeight: FontWeight.normal),),
          backgroundColor: Colors.white,

          iconTheme: IconThemeData(color: Colors.black),),

        body: currentPage,

        drawer: Drawer(


          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(

            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 120,
                  child: DrawerHeader(

                child: Text('Меню'),
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
              )),

              ListTile(


                title: Text('Информация о вызове'),
                onTap: () {
                  currentPage =callInfoPage;
                  Navigator.pop(context);
                  setState(() {

                  });
                },
              ),
              Divider(),
              ListTile(
                title: Text('Сведения о больном'),
                onTap: () {
                  currentPage = PatientInfoPage();
                  Navigator.pop(context);
                  setState(() {

                  });
                },
              ),
            ],
          ),
        ),
    );
  }
}
