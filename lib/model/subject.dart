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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stateSubjectId'] = this.stateSubjectId;
    data['stateCode'] = this.stateCode;
    data['subjectTitle'] = this.subjectTitle;
    data['subjectDesc'] = this.subjectDesc;
    data['hasResourceItems'] = this.hasResourceItems;
    return data;
  }
}
