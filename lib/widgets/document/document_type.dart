import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';

class DocumentType extends StatelessWidget {
  final String type;

  final regex = RegExp(r'[^/-]*$');
  RegExpMatch? match;

  DocumentType({Key? key, required this.type}) : super(key: key) {
    match = regex.firstMatch(type);
  }

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        match?.group(0) ?? "--",
        style: const TextStyle(fontSize: 10, color: Colors.white),
      ),
      backgroundColor: NrcsBlue,
      visualDensity: const VisualDensity(horizontal: -2, vertical: -4),
    );
  }
}
