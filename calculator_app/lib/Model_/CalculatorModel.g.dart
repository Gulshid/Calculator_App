// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CalculatorModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CalculatormodelAdapter extends TypeAdapter<Calculatormodel> {
  @override
  final int typeId = 0;

  @override
  Calculatormodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Calculatormodel(
      UserInput: fields[0] as String?,
      Answer: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Calculatormodel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.UserInput)
      ..writeByte(1)
      ..write(obj.Answer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalculatormodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
