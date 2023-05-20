import 'package:bestiarium/domain/entities/coordinate.dart';
import 'package:bestiarium/domain/entities/drawing_point.dart';
import 'package:hive/hive.dart';
part 'plant.g.dart';

@HiveType(typeId: 2)
class Plant extends HiveObject{

  @HiveField(0)
  late String name;


  @HiveField(1)
  late String size;

  @HiveField(2)
  late String description;

  @HiveField(3)
  late String icon;

  @HiveField(4)
  late int danger;

  @HiveField(11)
  late int halfDanger;

  @HiveField(5)
  late String url;

  @HiveField(12)
  late int fileTotalSize = 0;

  @HiveField(6)
  late String type;


  @HiveField(7)
  late String rarity;

  @HiveField(8)
  late String properties;

  @HiveField(9)
  late String sustainance;

  //@HiveField(10)
  //late List<DrawingPoint> habitat;

  @HiveField(10)
  late List<Coordinate> habitat = [];

}