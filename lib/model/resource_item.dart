import 'package:hive_flutter/adapters.dart';

import 'resource_mime_type.dart';
import 'subject.dart';

part 'resource_item.g.dart';

@HiveType(typeId: 1)
class ResourceItem {
  @HiveField(0)
  int? resourceId;

  @HiveField(1)
  String? keywords;

  @HiveField(2)
  String? resourceTitle;

  @HiveField(3)
  String? resourceRevisionDate;

  @HiveField(4)
  String? resourceEndDate;

  @HiveField(5)
  String? documentPath;

  @HiveField(6)
  String? abstract;

  @HiveField(7)
  int? fileSizeInKb;

  @HiveField(8)
  String? stgcReviewDate;

  @HiveField(9)
  bool? publicInd;

  @HiveField(10)
  bool? displayInd;

  @HiveField(11)
  String? subjectString;

  @HiveField(12)
  List<Subject>? subjects;

  @HiveField(13)
  bool? isDocument;

  @HiveField(14)
  String? documentUrl;

  @HiveField(15)
  String? fileName;

  @HiveField(16)
  String? resourceUrl;

  @HiveField(17)
  ResourceMimeType? resourceMimeType;

  @HiveField(18)
  String? lastChangeDate;

  @HiveField(19)
  String? lastChangeUserName;

  @HiveField(20)
  bool? isNRTVersion;

  @HiveField(21)
  int? resourceContactId;

  @HiveField(22)
  String? nrtDocumentName;

  @HiveField(23)
  bool? isHighlighted;

  @HiveField(24)
  int? sectionNumber;

  @HiveField(25)
  int? folderId;

  ResourceItem({
    this.resourceId,
    this.keywords,
    this.resourceTitle,
    this.resourceRevisionDate,
    this.resourceEndDate,
    this.documentPath,
    this.abstract,
    this.fileSizeInKb,
    this.stgcReviewDate,
    this.publicInd,
    this.displayInd,
    this.subjectString,
    this.subjects,
    this.isDocument,
    this.documentUrl,
    this.fileName,
    this.resourceUrl,
    this.resourceMimeType,
    this.lastChangeDate,
    this.lastChangeUserName,
    this.isNRTVersion,
    this.resourceContactId,
    this.nrtDocumentName,
    this.isHighlighted,
    this.sectionNumber,
    this.folderId,
  });

  ResourceItem.fromJson(Map<String, dynamic> json) {
    resourceId = json['resourceId'];
    keywords = json['keywords'];
    resourceTitle = json['resourceTitle'];
    resourceRevisionDate = json['resourceRevisionDate'];
    resourceEndDate = json['resourceEndDate'];
    documentPath = json['documentPath'];
    abstract = json['abstract'];
    fileSizeInKb = json['fileSizeInKb'];
    stgcReviewDate = json['stgcReviewDate'];
    publicInd = json['publicInd'];
    displayInd = json['displayInd'];
    subjectString = json['subjectString'];
    if (json['subjects'] != null) {
      subjects = <Subject>[];
      json['subjects'].forEach((v) {
        subjects!.add(Subject.fromJson(v));
      });
    }
    isDocument = json['isDocument'];
    documentUrl = json['documentUrl'];
    fileName = json['fileName'];
    resourceUrl = json['resourceUrl'];
    resourceMimeType = json['resourceMimeType'] != null
        ? ResourceMimeType.fromJson(json['resourceMimeType'])
        : null;
    lastChangeDate = json['lastChangeDate'];
    lastChangeUserName = json['lastChangeUserName'];
    isNRTVersion = json['isNRTVersion'];
    resourceContactId = json['resourceContactId'];
    nrtDocumentName = json['nrtDocumentName'];
    isHighlighted = json['isHighlighted'];
    sectionNumber = json['sectionNumber'];
    folderId = json['folderId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['resourceId'] = resourceId;
    data['keywords'] = keywords;
    data['resourceTitle'] = resourceTitle;
    data['resourceRevisionDate'] = resourceRevisionDate;
    data['resourceEndDate'] = resourceEndDate;
    data['documentPath'] = documentPath;
    data['abstract'] = abstract;
    data['fileSizeInKb'] = fileSizeInKb;
    data['stgcReviewDate'] = stgcReviewDate;
    data['publicInd'] = publicInd;
    data['displayInd'] = displayInd;
    data['subjectString'] = subjectString;
    if (subjects != null) {
      data['subjects'] = subjects!.map((v) => v.toJson()).toList();
    }
    data['isDocument'] = isDocument;
    data['documentUrl'] = documentUrl;
    data['fileName'] = fileName;
    data['resourceUrl'] = resourceUrl;
    if (resourceMimeType != null) {
      data['resourceMimeType'] = resourceMimeType!.toJson();
    }
    data['lastChangeDate'] = lastChangeDate;
    data['lastChangeUserName'] = lastChangeUserName;
    data['isNRTVersion'] = isNRTVersion;
    data['resourceContactId'] = resourceContactId;
    data['nrtDocumentName'] = nrtDocumentName;
    data['isHighlighted'] = isHighlighted;
    data['sectionNumber'] = sectionNumber;
    data['folderId'] = folderId;
    return data;
  }
}
