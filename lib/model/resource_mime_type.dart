class ResourceMimeType {
  int? mimeTypeId;
  String? mimeTypeName;
  int? mimeTypeClassId;

  ResourceMimeType({this.mimeTypeId, this.mimeTypeName, this.mimeTypeClassId});

  ResourceMimeType.fromJson(Map<String, dynamic> json) {
    mimeTypeId = json['mimeTypeId'];
    mimeTypeName = json['mimeTypeName'];
    mimeTypeClassId = json['mimeTypeClassId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mimeTypeId'] = this.mimeTypeId;
    data['mimeTypeName'] = this.mimeTypeName;
    data['mimeTypeClassId'] = this.mimeTypeClassId;
    return data;
  }
}
