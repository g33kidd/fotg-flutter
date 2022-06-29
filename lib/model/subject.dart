class Subject {
  int? stateSubjectId;
  String? stateCode;
  String? subjectTitle;
  String? subjectDesc;
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
