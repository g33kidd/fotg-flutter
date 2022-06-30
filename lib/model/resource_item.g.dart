// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResourceItemAdapter extends TypeAdapter<ResourceItem> {
  @override
  final int typeId = 1;

  @override
  ResourceItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResourceItem(
      resourceId: fields[0] as int?,
      keywords: fields[1] as String?,
      resourceTitle: fields[2] as String?,
      resourceRevisionDate: fields[3] as String?,
      resourceEndDate: fields[4] as String?,
      documentPath: fields[5] as String?,
      abstract: fields[6] as String?,
      fileSizeInKb: fields[7] as int?,
      stgcReviewDate: fields[8] as String?,
      publicInd: fields[9] as bool?,
      displayInd: fields[10] as bool?,
      subjectString: fields[11] as String?,
      subjects: (fields[12] as List?)?.cast<Subject>(),
      isDocument: fields[13] as bool?,
      documentUrl: fields[14] as String?,
      fileName: fields[15] as String?,
      resourceUrl: fields[16] as String?,
      resourceMimeType: fields[17] as ResourceMimeType?,
      lastChangeDate: fields[18] as String?,
      lastChangeUserName: fields[19] as String?,
      isNRTVersion: fields[20] as bool?,
      resourceContactId: fields[21] as int?,
      nrtDocumentName: fields[22] as String?,
      isHighlighted: fields[23] as bool?,
      sectionNumber: fields[24] as int?,
      folderId: fields[25] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ResourceItem obj) {
    writer
      ..writeByte(26)
      ..writeByte(0)
      ..write(obj.resourceId)
      ..writeByte(1)
      ..write(obj.keywords)
      ..writeByte(2)
      ..write(obj.resourceTitle)
      ..writeByte(3)
      ..write(obj.resourceRevisionDate)
      ..writeByte(4)
      ..write(obj.resourceEndDate)
      ..writeByte(5)
      ..write(obj.documentPath)
      ..writeByte(6)
      ..write(obj.abstract)
      ..writeByte(7)
      ..write(obj.fileSizeInKb)
      ..writeByte(8)
      ..write(obj.stgcReviewDate)
      ..writeByte(9)
      ..write(obj.publicInd)
      ..writeByte(10)
      ..write(obj.displayInd)
      ..writeByte(11)
      ..write(obj.subjectString)
      ..writeByte(12)
      ..write(obj.subjects)
      ..writeByte(13)
      ..write(obj.isDocument)
      ..writeByte(14)
      ..write(obj.documentUrl)
      ..writeByte(15)
      ..write(obj.fileName)
      ..writeByte(16)
      ..write(obj.resourceUrl)
      ..writeByte(17)
      ..write(obj.resourceMimeType)
      ..writeByte(18)
      ..write(obj.lastChangeDate)
      ..writeByte(19)
      ..write(obj.lastChangeUserName)
      ..writeByte(20)
      ..write(obj.isNRTVersion)
      ..writeByte(21)
      ..write(obj.resourceContactId)
      ..writeByte(22)
      ..write(obj.nrtDocumentName)
      ..writeByte(23)
      ..write(obj.isHighlighted)
      ..writeByte(24)
      ..write(obj.sectionNumber)
      ..writeByte(25)
      ..write(obj.folderId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
