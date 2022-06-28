import 'package:fotg/model/document_type.dart';

class StaticDataModel {
  List<DocumentType> documentTypes;
  String helpDeskContact;
  int pageSize;
  bool sectionNumberInArabicFormat;
  String apiVersion;

  StaticDataModel({
    required this.documentTypes,
    required this.helpDeskContact,
    required this.pageSize,
    required this.sectionNumberInArabicFormat,
    required this.apiVersion,
  });

  // static StaticDataModel fromJSON(Map<String, dynamic> data) {
  //   return StaticDataModel(
  //     apiVersion: data['version'] ?? "0.0",
  //     documentTypes:
  //   );
  // }
}
