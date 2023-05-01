// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'small_creature.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SmallCreatureAdapter extends TypeAdapter<SmallCreature> {
  @override
  final int typeId = 1;

  @override
  SmallCreature read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SmallCreature()
      ..name = fields[0] as String
      ..group = fields[1] as String
      ..size = fields[2] as String
      ..diet = fields[3] as String
      ..description = fields[4] as String
      ..icon = fields[5] as String
      ..danger = fields[6] as int
      ..halfDanger = fields[13] as int
      ..url = fields[7] as String
      ..type = fields[8] as String
      ..weakness = fields[9] as String
      ..rarity = fields[10] as String
      ..category = fields[11] as String
      ..habitat = (fields[12] as List).cast<DrawingPoint>();
  }

  @override
  void write(BinaryWriter writer, SmallCreature obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.group)
      ..writeByte(2)
      ..write(obj.size)
      ..writeByte(3)
      ..write(obj.diet)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.icon)
      ..writeByte(6)
      ..write(obj.danger)
      ..writeByte(13)
      ..write(obj.halfDanger)
      ..writeByte(7)
      ..write(obj.url)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.weakness)
      ..writeByte(10)
      ..write(obj.rarity)
      ..writeByte(11)
      ..write(obj.category)
      ..writeByte(12)
      ..write(obj.habitat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SmallCreatureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
