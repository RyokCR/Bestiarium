import 'dart:ui';
import 'package:bestiarium/pages/creature_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';


//#region TextFields

//Common TextField used through de application for most of text data input
Widget PageBox() {


  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
        decoration: BoxDecoration(


          //color: Colors.black12,

          border: Border.all(
            width: 1.5,
            color: Colors.black54,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child:GestureDetector(

              //padding: const EdgeInsets.all(10),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [

                  Flexible(
                    child:
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10
                      ),
                      child:
                      //Image.asset('assets/images/gerbobird.png'),),
                      Container(
                        height: 80,
                        width: 90,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image:  DecorationImage(
                            image: AssetImage('assets/images/gerbobird.png'),
                          ),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              width: 1
                          ),
                          //borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),


                  //SizedBox(width: 60),
                  Container(

                      child: Flexible(
                          child:
                          Padding(
                              padding: const EdgeInsets.only(
                                  right: 30
                              ),
                              child:
                              Text(
                                  'Jer-Jer',
                                  style: GoogleFonts.alexBrush(
                                      fontSize: 30,
                                  color: Colors.black)
                              )
                          )
                      )
                  )
                ],
              ),
              onTap: () async{

              },
            )
        )
    );
  });
}
