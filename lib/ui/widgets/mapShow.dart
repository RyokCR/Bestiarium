


import 'dart:ui';

import 'package:bestiarium/domain/entities/drawing_point.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/coordinate.dart';
import '../pages/map_drawer.dart';

Widget MapShow(creature_plant, context){



  //var drawingPoints = <DrawingPoint>[];

  var drawingPoints = creature_plant.habitat;
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;

  Widget con =  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/mesa.jpg'),
              fit: BoxFit.fill

          )
      ),

      child:Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/newMap.png'),
            fit: BoxFit.fitWidth

        )
    ),
    child:  AllPoints(creature_plant)
         /*Align(
      alignment: Alignment(.436 * 2 - 1, .274 * 2 - 1),
      child: Image.asset(
          creature_plant.icon,
          width: 55,
          height: 50,)//Text('cloud'),//CustomPaint(
      //painter: MyCustomPainter(drawingPoints: drawingPoints),
    ),*/
         
  ));

      //),

    //]
  //);
  return con;
}

Widget AllPoints(creature_plant){
  List points = creature_plant.habitat;

  List<Align> pointShows = [];

  //JUST TESTING
  //var item = Coordinate(x: (.850 * 2 - 1).toString(), y: (.490 * 2 - 1).toString());
  for (Coordinate item in points){

    pointShows.add(Align(
        alignment: Alignment(double.parse(item.x), double.parse(item.y)),
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/mapIconBG.png'),
                    fit: BoxFit.fill

                )
            ),

            child:Image.asset(
          creature_plant.icon,
          width: 35,
          height: 35,)
    )));
  }  //CHANGE BACK

  return Stack(
    children: pointShows,
  );
}