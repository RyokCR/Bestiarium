

import 'dart:ui';

import 'package:hive/hive.dart';

part 'coordinate.g.dart';

@HiveType(typeId: 5)
class Coordinate extends ObjectDatabase{

  @HiveField(0)
  late String x ;
  @HiveField(1)
  late String y ;


  Coordinate({required this.x, required this.y});



}




abstract class ObjectDatabase{}