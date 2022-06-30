import 'package:hive/hive.dart';

part 'resource_mime_type.g.dart';

@HiveType(typeId: 2)
class ResourceMimeType {
  @HiveField(0)
  int? mimeTypeId;
  @HiveField(1)
  String? mimeTypeName;
  @HiveField(2)
  int? mimeTypeClassId;

  ResourceMimeType({this.mimeTypeId, this.mimeTypeName, this.mimeTypeClassId});

  ResourceMimeType.fromJson(Map<String, dynamic> json) {
    mimeTypeId = json['mimeTypeId'];
    mimeTypeName = json['mimeTypeName'];
    mimeTypeClassId = json['mimeTypeClassId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['mimeTypeId'] = mimeTypeId;
    data['mimeTypeName'] = mimeTypeName;
    data['mimeTypeClassId'] = mimeTypeClassId;
    return data;
  }
}
