import 'package:flutter/cupertino.dart';

class APIResponse {
  int? code;
  String message;
  dynamic result;
  dynamic token;
  bool success;

  APIResponse({
    required this.code,
    required this.message,
    required this.result,
    required this.token,
    required this.success,
  });

  static APIResponse fromJson(Map<String, dynamic> data) {
    return APIResponse(
      code: data["code"] ?? 0,
      message: data["message"] ?? "",
      result: data["result"] ?? {},
      token: data["token"] ?? "",
      success: data["success"] ?? false,
    );
  }
}
