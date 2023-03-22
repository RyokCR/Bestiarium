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
      ..url = fields[7] as String;
  }

  @override
  void write(BinaryWriter writer, SmallCreature obj) {
    writer
      ..writeByte(8)
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
      ..writeByte(7)
      ..write(obj.url);
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
