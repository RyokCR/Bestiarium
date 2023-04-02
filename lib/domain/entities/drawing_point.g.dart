// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawing_point.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DrawingPointAdapter extends TypeAdapter<DrawingPoint> {
  @override
  final int typeId = 3;

  @override
  DrawingPoint read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DrawingPoint(
      id: fields[0] as int,
      width: fields[3] as double,
      color_value: fields[2] as int,
      offsets: (fields[1] as List).cast<Offset>(),
    );
  }

  @override
  void write(BinaryWriter writer, DrawingPoint obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.offsets)
      ..writeByte(2)
      ..write(obj.color_value)
      ..writeByte(3)
      ..write(obj.width);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrawingPointAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MapOffsetAdapter extends TypeAdapter<MapOffset> {
  @override
  final int typeId = 4;

  @override
  MapOffset read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MapOffset(
      dx: fields[0] as double,
      dy: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, MapOffset obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.dx)
      ..writeByte(1)
      ..write(obj.dy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapOffsetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
