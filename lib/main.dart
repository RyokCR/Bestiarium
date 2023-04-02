import 'dart:ui';


import 'package:bestiarium/domain/entities/drawing_point.dart';
import 'package:bestiarium/domain/entities/plant.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:flutter/material.dart';


import 'domain/services/db/admin/initial_data.dart';
import 'navigation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'utils/network.dart';
import 'package:dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await Hive.initFlutter();

  Hive.registerAdapter(SmallCreatureAdapter());
  Hive.registerAdapter(PlantAdapter());
  Hive.registerAdapter(DrawingPointAdapter());
  Hive.registerAdapter(MapOffsetAdapter());
  await Hive.openBox<SmallCreature>('small_creatures');
  await Hive.openBox<Plant>('plants');
  //init_db();



  runApp(NavApp());
}
