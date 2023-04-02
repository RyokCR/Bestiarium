
import 'dart:ui';

//import 'package:bestiarium/ui/pages/map_drawer.dart';
import 'package:bestiarium/domain/entities/drawing_point.dart';
import 'package:hive/hive.dart';

part 'drawing_point.g.dart';

@HiveType(typeId: 3)
class DrawingPoint extends ObjectDatabase{

  @HiveField(0)
  late int id;
  @HiveField(1)
  late List<Offset> offsets;
  @HiveField(2)
  late int color_value;
  @HiveField(3)
  late double width;

  DrawingPoint({required this.id, required this.width, required this.color_value, required this.offsets});

  DrawingPoint copyWith({List<Offset>? offsets}){
    return DrawingPoint(
        id: id,
        color_value: color_value,
        width: width,
        offsets: offsets ?? this.offsets
    );
  }

}

@HiveType(typeId: 4)
class MapOffset extends Offset{

  @override
  @HiveField(0)
  late double dx;

  @override
  @HiveField(1)
  late double dy;

  MapOffset({required this.dx, required this.dy}) : super(dx, dy);

  static MapOffset parseOffset(Offset point){
    return MapOffset(dx: point.dx, dy: point.dy);
  }

}



abstract class ObjectDatabase{}