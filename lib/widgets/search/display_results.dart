import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/providers.dart';

import '../../model/resource_item.dart';

class DisplayResults extends ConsumerWidget {
  const DisplayResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);
    return ListView.builder(
      itemCount: search.resourceItems.length,
      itemBuilder: (context, index) {
        ResourceItem item = search.resourceItems[index];
        // Card component can go here.
        return Text(item.resourceTitle!);
      },
    );
  }
}
