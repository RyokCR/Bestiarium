


import 'dart:ui';

import 'package:bestiarium/domain/entities/drawing_point.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/map_drawer.dart';

Widget MapShow(creature_plant){



  //var drawingPoints = <DrawingPoint>[];

  var drawingPoints = creature_plant.habitat;
  /*//for (var drawP in creature_plant.habitat){
    drawingPoints.add(new DrawingPoint(id: drawP.id, width: drawP.width, color_value: drawP.color_value, offsets: drawP.offsets));
  //}*/
    /*..id =1
    ..offsets = [new Offset(84.7, 133.9),
                  new Offset(265.0, 123.2)]
    ..width= 2.0
    ..color= Colors.red);*/
  Widget con =
       Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Map_v.2.png'),
            fit: BoxFit.fill

        )
    ),
    child: CustomPaint(
      painter: MyCustomPainter(drawingPoints: drawingPoints),
    ),
  );
  return con;
}