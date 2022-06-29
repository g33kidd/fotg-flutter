import 'package:flutter/cupertino.dart';
import 'package:fotg/api/api.dart';
import 'package:fotg/model/resource_item.dart';

class SearchProvider extends ChangeNotifier {
  List<ResourceItem> resourceItems = [];
  bool loading = false;

  Future<void> search(String criteria, String stateCode) async {
    loading = true;
    notifyListeners();

    final results = await API().search(criteria, stateCode);
    resourceItems = results;
    loading = false;
    notifyListeners();
  }
}
