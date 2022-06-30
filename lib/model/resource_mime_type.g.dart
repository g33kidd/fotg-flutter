// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_mime_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResourceMimeTypeAdapter extends TypeAdapter<ResourceMimeType> {
  @override
  final int typeId = 2;

  @override
  ResourceMimeType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResourceMimeType(
      mimeTypeId: fields[0] as int?,
      mimeTypeName: fields[1] as String?,
      mimeTypeClassId: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ResourceMimeType obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.mimeTypeId)
      ..writeByte(1)
      ..write(obj.mimeTypeName)
      ..writeByte(2)
      ..write(obj.mimeTypeClassId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceMimeTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
