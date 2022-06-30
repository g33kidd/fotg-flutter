import 'package:hive_flutter/adapters.dart';

part 'subject.g.dart';

@HiveType(typeId: 3)
class Subject {
  @HiveField(0)
  int? stateSubjectId;
  @HiveField(1)
  String? stateCode;
  @HiveField(2)
  String? subjectTitle;
  @HiveField(3)
  String? subjectDesc;
  @HiveField(4)
  bool? hasResourceItems;

  Subject({
    this.stateSubjectId,
    this.stateCode,
    this.subjectTitle,
    this.subjectDesc,
    this.hasResourceItems,
  });

  Subject.fromJson(Map<String, dynamic> json) {
    stateSubjectId = json['stateSubjectId'];
    stateCode = json['stateCode'];
    subjectTitle = json['subjectTitle'];
    subjectDesc = json['subjectDesc'];
    hasResourceItems = json['hasResourceItems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['stateSubjectId'] = stateSubjectId;
    data['stateCode'] = stateCode;
    data['subjectTitle'] = subjectTitle;
    data['subjectDesc'] = subjectDesc;
    data['hasResourceItems'] = hasResourceItems;
    return data;
  }
}
