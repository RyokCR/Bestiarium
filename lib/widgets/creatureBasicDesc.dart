


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CreatureBasicDescription(){

  return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/page_background.jpg'),
                  fit: BoxFit.cover

              )
          ),

          child: Column(
          children: <Widget>[
              Center(
                child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 15),
                 child: Container(

                  height: 150,
                  width: 150,
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
                )
                )
              ),
            const Divider(height: 30),
            Center(
              child: Text('Jer-Jer',
                  style: GoogleFonts.alexBrush(
                      fontSize: 50,
                      color: Colors.black
                  )
              ),

            ),
            const Divider(height: 30),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:Center(
              child: Text('Group:      Plumifera',
                  style: GoogleFonts.alexBrush(
                      fontSize: 40,
                      color: Colors.black
                  )
              ),

            )
            ),
            const Divider(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:Center(
                  child: Text('Size:           15 cm',
                      style: GoogleFonts.alexBrush(
                          fontSize: 40,
                          color: Colors.black
                      )
                  ),

                )
            ),
            const Divider(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:Center(
                  child: Text('Diet:     Omnivorous',
                      style: GoogleFonts.alexBrush(
                          fontSize: 40,
                          color: Colors.black
                      )
                  ),

                )
            ),
            const Divider(height: 120),
            ]
      ),



      )
  );
}