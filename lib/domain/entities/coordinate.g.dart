// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoordinateAdapter extends TypeAdapter<Coordinate> {
  @override
  final int typeId = 5;

  @override
  Coordinate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Coordinate(
      x: fields[0] as String,
      y: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Coordinate obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.x)
      ..writeByte(1)
      ..write(obj.y);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoordinateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
