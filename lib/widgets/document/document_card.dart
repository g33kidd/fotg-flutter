import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';
import 'package:fotg/widgets/document/document_author.dart';
import 'package:fotg/widgets/document/document_keywords.dart';
import 'package:fotg/widgets/document/document_path.dart';
import 'package:fotg/widgets/document/document_pub_date.dart';
import 'package:fotg/widgets/document/document_title.dart';
import 'package:fotg/widgets/document/document_type.dart';

class DocumentCard extends StatelessWidget {
  const DocumentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        margin: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint("Card tapped");
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const DocumentPath(
                  path:
                      "Section 3 > ... > Conservation Activity Plas (CAP) Technical Criteria",
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const DocumentTitle(
                  title: "Drainage_Water_Management_Plan - Code",
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: const <Widget>[
                    DocumentPubDate(
                      displayDate: "2022-06-22",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    DocumentAuthor(
                      author: "Perry Oakes",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const DocumentKeywords(
                  keywords: "water, soil",
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: <Widget>[
                    DocumentType(
                      type: "PDF",
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_add_outlined,
                        color: NrcsBlue,
                        size: 20,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.download_outlined,
                        color: NrcsBlue,
                        size: 20,
                      ),
                      visualDensity: VisualDensity.compact,
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
