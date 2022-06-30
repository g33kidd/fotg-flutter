import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/providers.dart';
import 'package:fotg/widgets/shared/app_scaffold.dart';

import '../model/resource_item.dart';
import '../widgets/document/document_card.dart';

class BookmarkScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(bookmarkProvider).bookmarks;

    return AppScaffold(
      screenTitle: "Bookmarks",
      displaySearch: false,
      pageIndex: 1,
      child: Container(
        padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
        color: Colors.grey[300],
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            ResourceItem item = items[index];
            return DocumentCard(resourceItem: item, bookmarked: true);
          },
        ),
      ),
    );
  }
}
