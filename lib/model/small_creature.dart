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

  //@HiveField(0)
  //late String name;





}