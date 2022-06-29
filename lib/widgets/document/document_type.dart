import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';

class DocumentType extends StatelessWidget {
  final String type;
  const DocumentType({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        type,
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
      backgroundColor: NrcsBlue,
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
    );
  }
}
