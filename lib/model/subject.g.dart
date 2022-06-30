// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SubjectAdapter extends TypeAdapter<Subject> {
  @override
  final int typeId = 3;

  @override
  Subject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Subject(
      stateSubjectId: fields[0] as int?,
      stateCode: fields[1] as String?,
      subjectTitle: fields[2] as String?,
      subjectDesc: fields[3] as String?,
      hasResourceItems: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Subject obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.stateSubjectId)
      ..writeByte(1)
      ..write(obj.stateCode)
      ..writeByte(2)
      ..write(obj.subjectTitle)
      ..writeByte(3)
      ..write(obj.subjectDesc)
      ..writeByte(4)
      ..write(obj.hasResourceItems);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
