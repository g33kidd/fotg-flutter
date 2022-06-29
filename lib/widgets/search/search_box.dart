import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBox extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here...",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
