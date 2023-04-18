


import 'package:bestiarium/domain/entities/plant.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';

queryCreaturesByGroup(String group){
  var all = Boxes.getSmallCreatures();
  return all.values.where((element) => element.group==group).toList().cast<SmallCreature>();

}

queryCreaturesByDanger(int danger){
  var creat = Boxes.getSmallCreatures();
  var plant = Boxes.getPlants();
  List entries = creat.values.where((element) => element.danger==danger).toList().cast<SmallCreature>();
  entries.addAll(plant.values.where((element) => element.danger==danger).toList().cast<Plant>());

  return entries;
}


queryCreaturesByDiet(String diet){
  var creat = Boxes.getSmallCreatures();
  var plant = Boxes.getPlants();
  List entries = creat.values.where((element) => element.diet==diet).toList().cast<SmallCreature>();
  entries.addAll(plant.values.where((element) => element.sustainance==diet).toList().cast<Plant>());

  return entries;
}