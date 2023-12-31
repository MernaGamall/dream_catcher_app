// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_model_class.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReminderModelClassAdapter extends TypeAdapter<ReminderModelClass> {
  @override
  final int typeId = 2;

  @override
  ReminderModelClass read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReminderModelClass(
      title: fields[2] as String,
      disc: fields[3] as String,
      date: fields[4] as String,
      time: fields[5] as String,
      id: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ReminderModelClass obj) {
    writer
      ..writeByte(5)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.disc)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReminderModelClassAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
