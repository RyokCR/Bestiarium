import 'package:hive/hive.dart';
part 'small_creature.g.dart';

@HiveType(typeId: 1)
class SmallCreature extends HiveObject{

  @HiveField(0)
  late String name;

  @HiveField(1)
  late String group;

  @HiveField(2)
  late String size;

  @HiveField(3)
  late String diet;

  @HiveField(4)
  late String description;

  @HiveField(5)
  late String icon;

  @HiveField(6)
  late int danger;

  @HiveField(7)
  late String url;

  @HiveField(8)
  late String type;

  @HiveField(9)
  late String weakness;

  @HiveField(10)
  late String rarity;

  @HiveField(11)
  late String category;
  //Habitat
  //@HiveField(8)
  //late String url;



}