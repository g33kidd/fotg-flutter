import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';

class DocumentPubDate extends StatelessWidget {
  final String displayDate;

  const DocumentPubDate({Key? key, required this.displayDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.calendar_today,
          size: 12,
          color: NrcsBlue,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          displayDate,
          style: TextStyle(color: Colors.grey[900], fontSize: 12),
        )
      ],
    );
  }
}
