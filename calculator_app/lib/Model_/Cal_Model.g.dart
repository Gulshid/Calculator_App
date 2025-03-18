// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cal_Model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CalModelAdapter extends TypeAdapter<CalModel> {
  @override
  final int typeId = 0;

  @override
  CalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CalModel(
      UserInput: fields[0] as String?,
      result: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CalModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.UserInput)
      ..writeByte(1)
      ..write(obj.result);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
