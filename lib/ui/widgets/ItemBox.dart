import 'dart:ui';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:bestiarium/ui/pages/creature_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'dart:io';

//#region TextFields

//Common TextField used through de application for most of text data input
Widget ItemBox(creature, context) {

  var image = File('/data/user/0/sko.raym.bestiarium/app_flutter/PicsArt_03-06-03.11.38.jpg');
  TextTheme _textTheme = Theme.of(context).textTheme;
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      //width: 80,
      height: 115,
        decoration:  BoxDecoration(
            //border: Border.all(width: 1),
            image: DecorationImage(
                alignment: Alignment.center,
                /// If is a small create use group, If is plant use type
                image: creature.runtimeType==SmallCreature?
                AssetImage('assets/images/${creature.group}_BG.png',) :
                AssetImage('assets/images/${creature.type}_BG.png'),
                //AssetImage('assets/images/page_background.jpg'),
                fit: BoxFit.cover,


            )
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child:GestureDetector(

              //padding: const EdgeInsets.all(10),

              child:  Container(
                //height: 100,

                alignment: Alignment.center,
                /*decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    image: DecorationImage(
                      alignment: Alignment.centerRight,
                      /// If is a small create use group, If is plant use type
                        image: creature.runtimeType==SmallCreature?
                        AssetImage('assets/images/${creature.group}_BG.png',) :
                        //AssetImage('assets/images/${creature.type}_BG.png'),
                        AssetImage('assets/images/page_background.jpg'),
                        fit: BoxFit.fitWidth,
                        scale: 1

                    )
                ),*/

                child: Padding(padding: EdgeInsets.only(top: 15)
                    ,child: Row(

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
                              //color: Colors.black45,
                              image:  DecorationImage(
                                image: AssetImage('assets/images/Icon_BG.png'),
                              ),
                              shape: BoxShape.rectangle,
                            ),

                        child: Container(
                        decoration: BoxDecoration(
                          //color: Colors.black45,
                          image:
                          DecorationImage(

                            image: AssetImage(creature.icon),

                          ),
                          shape: BoxShape.rectangle,

                          //borderRadius: BorderRadius.circular(12),
                          ),

                        )
                        ),
                    ),
                    ),


                    //SizedBox(width: 60),
                    Container(

                        child: FittedBox(
                            child:
                            Padding(
                                padding: const EdgeInsets.only(
                                    right: 30
                                ),
                                child:
                             Text(
                                creature.name,
                                style: GoogleFonts.alexBrush(
                                        fontSize: 30,
                                color: Colors.black)
                                )//_textTheme.bodyMedium
                                //GoogleFonts.alexBrush(
                                //    fontSize: 30)
                            ),
                          fit: BoxFit.contain,
                        )
                      )

                  ],
                )
                ),
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
