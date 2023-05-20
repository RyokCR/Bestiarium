


import 'package:bestiarium/domain/entities/coordinate.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';

import 'initial_large_creatures.dart';
import 'initial_plants.dart';
import 'initial_small_creatures.dart';

void init_db(){

  addLargeCreatures();
  addSmallCreatures();
  addPlants();


}

