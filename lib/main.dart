import 'dart:ui';


import 'package:bestiarium/domain/entities/drawing_point.dart';
import 'package:bestiarium/domain/entities/plant.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:flutter/material.dart';


import 'domain/entities/coordinate.dart';
import 'domain/services/db/admin/initial_data.dart';
import 'navigation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:bestiarium/domain/services/db/admin/db_manager.dart';

import 'utils/network.dart';
import 'package:dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await Hive.initFlutter();

  Hive.registerAdapter(SmallCreatureAdapter());
  Hive.registerAdapter(PlantAdapter());
  Hive.registerAdapter(DrawingPointAdapter());
  Hive.registerAdapter(MapOffsetAdapter());
  Hive.registerAdapter(CoordinateAdapter());
  await Hive.openBox<SmallCreature>('small_creatures');
  await Hive.openBox<Plant>('plants');

  var small = Boxes.getSmallCreatures();
  List creatures_small = small.values.where((element) => element.category == 'small').toList().cast<SmallCreature>();
  if(creatures_small.isEmpty) {
    init_db();
  }



  runApp(NavApp());
}
