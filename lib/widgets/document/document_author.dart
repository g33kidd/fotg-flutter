import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';

class DocumentAuthor extends StatelessWidget {
  final String author;

  const DocumentAuthor({Key? key, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.create,
          size: 12,
          color: NrcsBlue,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          author,
          style: TextStyle(color: Colors.grey[900], fontSize: 12),
        )
      ],
    );
  }
}
