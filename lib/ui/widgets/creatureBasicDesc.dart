


import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/ui/widgets/danger_level.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CreatureBasicDescription(SmallCreature creature/*image, name, group, size, diet*/){

  var dangerLevels = dangerLevel(creature);

  return SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/new_background.jpg'),
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
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(creature.name,
                    style: GoogleFonts.alexBrush(
                        fontSize: 50,
                        color: Colors.black
                    )
                ),
              ),

            ),
            const Divider(height: 30),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:Center(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text('Group:  '+creature.group,
                    style: GoogleFonts.alexBrush(
                        fontSize: 40,
                        color: Colors.black
                    )
                ),
              ),

            )
            ),
            const Divider(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Size:'+creature.size,

                        style: GoogleFonts.alexBrush(
                            fontSize: 40,
                            color: Colors.black
                        )
                    ),
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
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Diet: '+creature.diet,
                        style: GoogleFonts.alexBrush(
                            fontSize: 40,
                            color: Colors.black
                        )
                    ),
                  ),

                )
            ),
            const Divider(height: 30),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:Center(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Rarity: '+creature.rarity,
                        style: GoogleFonts.alexBrush(
                            fontSize: 40,
                            color: Colors.black
                        )
                    ),
                  ),

                )
            ),

            const Divider(height: 120),
            ]
      ),



      )
  );
}

