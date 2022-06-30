import 'package:flutter/material.dart';
import 'package:fotg/model/resource_item.dart';
import 'package:hive_flutter/adapters.dart';

class BookmarkProvider extends ChangeNotifier {
  List<ResourceItem> bookmarks = [];

  Future<void> init() async {
    final box = Hive.box('bookmarks');
    final storedBookmarks = box.values;
    for (var i in storedBookmarks) {
      bookmarks.add((i as ResourceItem));
    }
    debugPrint(storedBookmarks.toList().toString());
  }

  Future<void> add(ResourceItem item) async {
    final box = Hive.box('bookmarks');
    box.put(item.resourceId, item);
    bookmarks.add(item);
    notifyListeners();
  }

  Future<void> del(ResourceItem item) async {
    final box = Hive.box('bookmarks');
    box.delete(item.resourceId);
    final idx = bookmarks.indexWhere((i) => i.resourceId == item.resourceId);
    if (idx != -1) {
      bookmarks.removeAt(idx);
    }
    notifyListeners();
  }
}
