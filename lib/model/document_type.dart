class DocumentType {
  String name;
  List<String> fileExtensions;
  String image;
  bool isDefaultImage;
  List<int> mimeTypeIds;

  DocumentType({
    required this.name,
    required this.fileExtensions,
    required this.image,
    required this.isDefaultImage,
    required this.mimeTypeIds,
  });

  static DocumentType fromJSON(Map<String, dynamic> data) {
    return DocumentType(
      name: data['name'] ?? "",
      fileExtensions: data['fileExtensionList'] ?? [],
      image: data['image'] ?? "",
      isDefaultImage: data['isDefaultImage'] ?? false,
      mimeTypeIds: data['mineTypeIds'] ?? [],
    );
  }
}
