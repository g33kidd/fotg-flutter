import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers.dart';

class SearchBox extends ConsumerWidget {
  final searchText = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Flexible(
          child: Container(
            color: Colors.white,
            child: TextField(
              controller: searchText,
              decoration: InputDecoration(
                hintText: "Search here...",
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(onPressed: ()=>searchText.clear(), icon: const Icon(Icons.clear)),
                 border: OutlineInputBorder()
              ),
              onSubmitted: (value){
                print(value);
              },
            ),

          ),
        ),
      ],
    );
  }
}
