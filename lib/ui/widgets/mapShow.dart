


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/map_drawer.dart';

Widget MapShow(){

  var drawingPoints = <DrawingPoint>[];
  drawingPoints.add(new DrawingPoint()
    ..id =1
    ..offsets = [new Offset(84.7, 133.9),
                  new Offset(265.0, 123.2)]
    ..width= 2.0
    ..color= Colors.red);
  Widget con = Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Map.png'),
            fit: BoxFit.fill

        )
    ),
    child: CustomPaint(
      painter: MyCustomPainter(drawingPoints: drawingPoints),
    ),
  );
  return con;
}