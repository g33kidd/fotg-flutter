class StateModel {
  String stateCode;
  String stateName;
  String stateAbbreviation;

  StateModel({
    required this.stateCode,
    required this.stateName,
    required this.stateAbbreviation,
  });

  static StateModel fromJSON(Map<String, dynamic> data) {
    return StateModel(
      stateCode: data["stateCode"] ?? "",
      stateName: data["stateName"] ?? "",
      stateAbbreviation: data["stateAbbreviation"] ?? "",
    );
  }
}
