import 'package:flutter/material.dart';

class DocumentPath extends StatelessWidget {
  final String path;
  final regex = RegExp(r'>> ([\s\S]*)$');
  RegExpMatch? match;

  DocumentPath({Key? key, required this.path}) : super(key: key) {
    match = regex.firstMatch(path);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      match?.group(1) ??
          "Section 4 - Practice Standards and Supporting Documents",
      style: TextStyle(color: Colors.grey[600], fontSize: 10),
      overflow: TextOverflow.ellipsis,
      softWrap: false,
    );
  }
}
