import 'dart:ui';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:bestiarium/ui/pages/creature_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'dart:io';

//#region TextFields

//Common TextField used through de application for most of text data input
Widget ItemBox(SmallCreature creature, context) {

  var image = File('/data/user/0/sko.raym.bestiarium/app_flutter/PicsArt_03-06-03.11.38.jpg');
  TextTheme _textTheme = Theme.of(context).textTheme;
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
                      Container(
                    height: 80,
                      width: 90,

                      decoration: BoxDecoration(
                        color: Colors.black45,
                        image:
                        DecorationImage(

                          image: AssetImage(creature.icon),

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
                              creature.name,
                              style: GoogleFonts.alexBrush(
                                      fontSize: 30)
                              )//_textTheme.bodyMedium
                              //GoogleFonts.alexBrush(
                              //    fontSize: 30)
                          )
                      )
                    )
                  
                ],
              ),
              onTap: () async{

                var dir = await path_provider.getExternalStorageDirectory();
                var localPath = '${dir?.path}/${creature.name}.jpg';
                bool inStorage;
                try{
                  inStorage = await File(localPath).exists();
                  //im = Image.file(File(localPath));
                  //inStorage = true;
                }
                catch(e){
                  inStorage= false;
                }

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Creature_Page(creature: creature,localUrl: localPath, inStorage: inStorage,)));

              },
            )
        )
    );
  });
}
