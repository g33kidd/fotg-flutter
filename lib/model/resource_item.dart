import 'resource_mime_type.dart';
import 'subject.dart';

class ResourceItem {
  int? resourceId;
  String? keywords;
  String? resourceTitle;
  String? resourceRevisionDate;
  String? resourceEndDate;
  String? documentPath;
  String? abstract;
  int? fileSizeInKb;
  String? stgcReviewDate;
  bool? publicInd;
  bool? displayInd;
  String? subjectString;
  List<Subject>? subjects;
  bool? isDocument;
  String? documentUrl;
  String? fileName;
  String? resourceUrl;
  ResourceMimeType? resourceMimeType;
  String? lastChangeDate;
  String? lastChangeUserName;
  bool? isNRTVersion;
  int? resourceContactId;
  String? nrtDocumentName;
  bool? isHighlighted;
  int? sectionNumber;
  int? folderId;

  ResourceItem(
      {this.resourceId,
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
      this.folderId});

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
    final Map<String, dynamic> data = Map<String, dynamic>();
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
