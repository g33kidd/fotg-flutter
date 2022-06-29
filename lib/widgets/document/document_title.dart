import 'package:flutter/material.dart';

class DocumentTitle extends StatelessWidget {
  final String title;

  const DocumentTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
      overflow: TextOverflow.clip,
      softWrap: false,
    );
  }
}
