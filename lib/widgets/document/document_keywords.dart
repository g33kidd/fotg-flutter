import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';

class DocumentKeywords extends StatelessWidget {
  final String keywords;

  const DocumentKeywords({Key? key, required this.keywords}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.label,
          size: 12,
          color: NrcsBlue,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          keywords,
          style: TextStyle(color: Colors.grey[900], fontSize: 12),
        )
      ],
    );
  }
}
