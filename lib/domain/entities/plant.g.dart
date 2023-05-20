// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlantAdapter extends TypeAdapter<Plant> {
  @override
  final int typeId = 2;

  @override
  Plant read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Plant()
      ..name = fields[0] as String
      ..size = fields[1] as String
      ..description = fields[2] as String
      ..icon = fields[3] as String
      ..danger = fields[4] as int
      ..halfDanger = fields[11] as int
      ..url = fields[5] as String
      ..fileTotalSize = fields[12] as int
      ..type = fields[6] as String
      ..rarity = fields[7] as String
      ..properties = fields[8] as String
      ..sustainance = fields[9] as String
      ..habitat = (fields[10] as List).cast<Coordinate>();
  }

  @override
  void write(BinaryWriter writer, Plant obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.size)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.icon)
      ..writeByte(4)
      ..write(obj.danger)
      ..writeByte(11)
      ..write(obj.halfDanger)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(12)
      ..write(obj.fileTotalSize)
      ..writeByte(6)
      ..write(obj.type)
      ..writeByte(7)
      ..write(obj.rarity)
      ..writeByte(8)
      ..write(obj.properties)
      ..writeByte(9)
      ..write(obj.sustainance)
      ..writeByte(10)
      ..write(obj.habitat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlantAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
