
import 'package:hive/hive.dart';

import '../../model/small_creature.dart';

addSmallCreature(String name, String group, String size, String diet, String description, String icon){
  final creature = SmallCreature()
      ..name = name
      ..group = group
      ..size = size
      ..diet = diet
      ..description = description
      ..icon = icon;

  //setState(() => small_creatures.add(creature));
  final box = Boxes.getSmallCreatures();
  box.add(creature);
}

class Boxes {
  static Box<SmallCreature> getSmallCreatures() =>
      Hive.box<SmallCreature>('small_creatures');
}