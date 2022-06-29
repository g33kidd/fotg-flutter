import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:fotg/model/resource_item.dart';
import 'package:fotg/model/state.dart';
import 'package:fotg/model/static_data.dart';

import 'response.dart';

const String apiKey = "6f85d90e88d048718ece57e70bd7e5ec";

class API {
  final dio = Dio(BaseOptions(
    headers: {"X-API-KEY": apiKey, "Content-Type": "application/json"},
    baseUrl: "https://efotg.sc.egov.usda.gov/api/",
  ));

  API() {
    dio.interceptors.add(
      DioLoggingInterceptor(
        level: Level.body,
        compact: false,
      ),
    );
  }

  Future<APIResponse> get(endpoint) async {
    Response response = await dio.get(endpoint);
    if (response.statusCode == 200) {
      return APIResponse.fromJson(response.data);
    } else {
      return APIResponse(
        code: response.statusCode,
        message: "Invalid API Response",
        result: {},
        success: false,
        token: null,
      );
    }
  }

  Future<APIResponse> post(String endpoint, Map<String, dynamic> data) async {
    Response response = await dio.post(endpoint, data: data);
    if (response.statusCode == 200) {
      return APIResponse.fromJson(response.data);
    } else {
      return APIResponse(
        code: response.statusCode,
        message: "Invalid API Response",
        result: {},
        success: false,
        token: null,
      );
    }
  }

  Future<List<StateModel>> getStates() async {
    APIResponse response = await get("state");
    List<StateModel> statesList = [];
    if (response.success) {
      statesList = response.result
          .map<StateModel>((item) => StateModel.fromJSON(item))
          .toList();
    }

    return statesList;
  }

  Future<StaticDataModel> getStaticData() async {
    APIResponse response = await get("healthCheck/getstaticdata");
    if (response.success) {
      Map<String, dynamic> data = response.result;
      return StaticDataModel(
        apiVersion: data['version'],
        documentTypes: [], // build list
        helpDeskContact: data['helpDeskContact'],
        pageSize: data['pageSize'],
        sectionNumberInArabicFormat: data['sectionNumberInArabicFormat'],
      );
    } else {
      return StaticDataModel(
        apiVersion: "",
        documentTypes: [], // build list
        helpDeskContact: "",
        pageSize: 25,
        sectionNumberInArabicFormat: false,
      );
    }
  }

  Future<List<ResourceItem>> search(String criteria, String stateCode) async {
    APIResponse response = await post(
      "resourceItem/listBySearchCriteriaAll",
      {
        "searchCriteria": criteria,
        "stateCode": stateCode,
      },
    );

    List<ResourceItem> resourceItems = [];

    if (response.success) {
      List<Map<String, dynamic>> results = response.result;
      resourceItems =
          results.map<ResourceItem>((e) => ResourceItem.fromJson(e)).toList();
    }

    return resourceItems;
  }
}
