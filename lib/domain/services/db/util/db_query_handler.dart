


import 'package:bestiarium/domain/entities/plant.dart';
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:bestiarium/domain/services/db/admin/db_manager.dart';

queryCreaturesByGroup(String group){
  if(group == 'All') {
    return queryGetAll();
  }
  var creat = Boxes.getSmallCreatures();
  var plant = Boxes.getPlants();
  List creatRes = creat.values.where((element) => element.group==group).toList().cast<SmallCreature>();
  List plantsRes = plant.values.where((element) => element.type==group).toList().cast<Plant>();

  List<dynamic> results = [];
  results.addAll(creatRes);
  results.addAll(plantsRes);

  return results;

}

queryCreaturesByDanger(String danger){
  if(danger == 'All') {
    return queryGetAll();
  }
  int dangerValue = int.parse(danger);
  var creat = Boxes.getSmallCreatures();
  var plant = Boxes.getPlants();
  List creatRes = creat.values.where((element) => element.danger==dangerValue).toList().cast<SmallCreature>();
  List plantsRes = plant.values.where((element) => element.danger==dangerValue).toList().cast<Plant>();

  List<dynamic> results = [];
  results.addAll(creatRes);
  results.addAll(plantsRes);

  return results;
}


queryCreaturesByRarity(String rarity){
  if(rarity == 'All') {
    return queryGetAll();
  }
  var creat = Boxes.getSmallCreatures();
  var plant = Boxes.getPlants();
  List creatRes = creat.values.where((element) => element.rarity==rarity).toList().cast<SmallCreature>();
  List plantsRes = plant.values.where((element) => element.rarity==rarity).toList().cast<Plant>();

  List<dynamic> results = [];
  results.addAll(creatRes);
  results.addAll(plantsRes);

  return results;
}


queryCreaturesByDiet(String diet){
  if(diet == 'All') {
    return queryGetAll();
  }
  var creat = Boxes.getSmallCreatures();
  var plant = Boxes.getPlants();
  List creatRes = creat.values.where((element) => element.diet==diet).toList().cast<SmallCreature>();
  List plantsRes = plant.values.where((element) => element.sustainance==diet).toList().cast<Plant>();

  List<dynamic> results = [];
  results.addAll(creatRes);
  results.addAll(plantsRes);

  return results;
}

queryGetAll(){
  var creat = Boxes.getSmallCreatures();
  var plant = Boxes.getPlants();
  List entries = creat.values.toList().cast<SmallCreature>();
  List plantsRes = plant.values.toList().cast<Plant>();

  List<dynamic> results = [];
  results.addAll(entries);
  results.addAll(plantsRes);

  return results;
}