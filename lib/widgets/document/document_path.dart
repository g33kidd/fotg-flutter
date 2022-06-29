import 'package:flutter/material.dart';

class DocumentPath extends StatelessWidget {
  final String path;

  const DocumentPath({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      path,
      style: TextStyle(color: Colors.grey[600], fontSize: 10),
      overflow: TextOverflow.ellipsis,
      softWrap: false,
    );
  }
}
