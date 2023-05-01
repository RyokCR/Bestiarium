
import 'package:bestiarium/domain/entities/small_creature.dart';
import 'package:hive/hive.dart';

//import 'package:bestiarium/ui/pages/map_drawer.dart';
import 'package:bestiarium/domain/entities/plant.dart';


addSmallCreature(String name, String group, String size, String diet, String description, String icon, int danger, String url, String type, String weakness, String rarity, String category, {int halfDanger = 0}){
  final creature = SmallCreature()
      ..name = name
      ..group = group
      ..size = size
      ..diet = diet
      ..description = description
      ..icon = icon
      ..danger = danger
      ..url = url
      ..type = type
      ..weakness = weakness
      ..rarity = rarity
      ..category = category
      ..habitat = []
      ..halfDanger = halfDanger
  ;
  //setState(() => small_creatures.add(creature));
  final box = Boxes.getSmallCreatures();
  box.add(creature);
}

addPlant(String name, String size, String description, String icon, int danger, String url, String type, String rarity, String properties, String sustainance, {int halfDanger = 0}){
  final plant = Plant()
    ..name = name
    ..size = size
    ..description = description
    ..icon = icon
    ..danger = danger
    ..url = url
    ..type = type
    ..rarity = rarity
    ..properties = properties
    ..sustainance = sustainance
    ..habitat = []
    ..halfDanger = halfDanger
  ;
  //setState(() => small_creatures.add(creature));
  final box = Boxes.getPlants();
  box.add(plant);
}


addHabitatToObject(object,  habitat){

    object.habitat = habitat;
    object.save();
}

class Boxes {
  static Box<SmallCreature> getSmallCreatures() =>
      Hive.box<SmallCreature>('small_creatures');

  static Box<Plant> getPlants() =>
      Hive.box<Plant>('plants');
}