import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers.dart';

class SearchBox extends ConsumerWidget {
  final searchText = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);
    final currentState = ref.watch(stateProvider).selected;

    return CupertinoSearchTextField(
      controller: searchText,
      onSubmitted: (String criteria) async {
        if (currentState != null) {
          await search.search(criteria, currentState.stateCode);
        } else {
          // TODO error state
        }
      },
      backgroundColor: Colors.white,
    );
  }
}
