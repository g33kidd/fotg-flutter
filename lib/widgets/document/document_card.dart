import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';
import 'package:fotg/model/resource_item.dart';
import 'package:fotg/widgets/document/document_author.dart';
import 'package:fotg/widgets/document/document_keywords.dart';
import 'package:fotg/widgets/document/document_path.dart';
import 'package:fotg/widgets/document/document_pub_date.dart';
import 'package:fotg/widgets/document/document_title.dart';
import 'package:fotg/widgets/document/document_type.dart';

class DocumentCard extends StatelessWidget {
  final ResourceItem resourceItem;

  const DocumentCard({Key? key, required this.resourceItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint("Card tapped");
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DocumentPath(
                  path: resourceItem.documentPath ?? "N/A",
                ),
                const SizedBox(
                  height: 8.0,
                ),
                DocumentTitle(
                  title: resourceItem.resourceTitle ?? "N/A",
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    DocumentPubDate(
                      date: resourceItem.resourceRevisionDate ?? "N/A",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const DocumentAuthor(
                      author: "USDA",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6.0,
                ),
                DocumentKeywords(
                  keywords: resourceItem.keywords ?? "N/A",
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: <Widget>[
                    DocumentType(
                        type: resourceItem.resourceMimeType?.mimeTypeName ??
                            "--"),
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
