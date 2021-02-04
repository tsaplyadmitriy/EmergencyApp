import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CardUIPage extends StatelessWidget {

  CardUIPage({Key key}) : super(key: key);

  var colors = [Colors.blue,Colors.red,Colors.yellow,Colors.purple,Colors.green];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("EmergencyApp"),),

        body:

        Container(

          //margin: EdgeInsets.only(top: 15),
            child: CarouselSlider(

             options: CarouselOptions(

                 height: MediaQuery.of(context).size.height,
               viewportFraction: 1.0,
               enlargeCenterPage: false,
             ),


              items: [0,1,2,3,4].map((i) {

                return Builder(

                  builder: (BuildContext context) {

                  return Container(

                      width: MediaQuery.of(context).size.width,

                      decoration: BoxDecoration(
                          color: colors[i],
                      ),
                      child: Center(child:Text('Text $i', style: TextStyle(fontSize: 16.0),))
                   );

               },
              );
            }).toList(),
          )
        )
    );
  }
}
