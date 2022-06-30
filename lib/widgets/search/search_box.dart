import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers.dart';

class SearchBox extends ConsumerWidget {
  final searchText = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoSearchTextField(
      controller: searchText,
      onSubmitted: (value) {
        print(value);
      },
      backgroundColor: Colors.white,
    );
  }
}
