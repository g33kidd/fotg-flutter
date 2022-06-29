import 'package:flutter/material.dart';

class DocumentIcon extends StatelessWidget {
  const DocumentIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.file_present,
      color: Colors.grey[500],
      size: 20,
    );
  }
}
