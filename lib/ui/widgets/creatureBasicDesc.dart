


import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CreatureBasicDescription(SmallCreature creature/*image, name, group, size, diet*/){

  var dangerLevels = dangerLevel(creature);

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
                     //color: Colors.black45,
                     image:  DecorationImage(
                       image: AssetImage('assets/images/Icon_BG.png'),
                     ),
                     shape: BoxShape.rectangle,
                     //border: Border.all(width: 1),
                     //borderRadius: BorderRadius.circular(12),
                   ),

                   child: Container(

                    decoration: BoxDecoration(
                      //color: Colors.black45,
                      image:  DecorationImage(
                        image: AssetImage(creature.icon),
                      ),
                      shape: BoxShape.rectangle,
                      //border: Border.all(
                      //    width: 1
                      ),
                      //borderRadius: BorderRadius.circular(12),
                    ),
                ),
                 )

              ),
            const Divider(height: 30),
            Center(
              child: Text(creature.name,
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
              child: Text('Group:      '+creature.group,
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
                  child: Text('Size:'+creature.size,
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

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: dangerLevels,
                  )

                )
            ),
            const Divider(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:Center(
                  child: Text('Diet:   '+creature.diet,
                      style: GoogleFonts.alexBrush(
                          fontSize: 40,
                          color: Colors.black
                      )
                  ),

                )
            ),
            /*const Divider(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:Center(
                  child: Text('Diet:   '+creature.diet,
                      style: GoogleFonts.alexBrush(
                          fontSize: 40,
                          color: Colors.black
                      )
                  ),

                )
            ),*/
            const Divider(height: 120),
            ]
      ),



      )
  );
}

List<Widget> dangerLevel(creature){

  List<Widget> danLev = [
    Text('Danger:   ',
        style: GoogleFonts.alexBrush(
            fontSize: 40,
            color: Colors.black
        )
    ),
  ];

  for(var i=0; i<creature.danger; i++){
    danLev.add(Icon(Icons.star,color: Colors.black,));
  }

  return danLev;
}