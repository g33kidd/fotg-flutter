import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/constants.dart';
import 'package:fotg/model/resource_item.dart';
import 'package:fotg/providers.dart';
import 'package:fotg/widgets/document/document_author.dart';
import 'package:fotg/widgets/document/document_keywords.dart';
import 'package:fotg/widgets/document/document_path.dart';
import 'package:fotg/widgets/document/document_pub_date.dart';
import 'package:fotg/widgets/document/document_title.dart';
import 'package:fotg/widgets/document/document_type.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

extension FirstWhereOrNullExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (E element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

class DocumentCard extends ConsumerWidget {
  final ResourceItem resourceItem;
  final bool bookmarked;

  const DocumentCard({
    Key? key,
    required this.resourceItem,
    this.bookmarked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasMarked = ref
        .watch(bookmarkProvider)
        .bookmarks
        .firstWhereOrNull((i) => i.resourceId == resourceItem.resourceId);

    final isMarked = hasMarked != null;
    return Card(
        color: Colors.white,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint("Card tapped");
            debugPrint(resourceItem.documentUrl);
            openFile(
                url: resourceItem.documentUrl ?? "",
                fileName: resourceItem.resourceTitle);
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      DocumentPath(
                        path: resourceItem.documentPath ?? "N/A",
                      ),
                      const SizedBox(height: 8.0),
                      DocumentTitle(
                        title: resourceItem.resourceTitle ?? "N/A",
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          DocumentPubDate(
                            date: resourceItem.resourceRevisionDate ?? "N/A",
                          ),
                          const SizedBox(width: 10),
                          const DocumentAuthor(
                            author: "USDA",
                          ),
                        ],
                      ),
                      const SizedBox(height: 6.0),
                      DocumentKeywords(
                        keywords: resourceItem.keywords ?? "N/A",
                      ),
                      const SizedBox(height: 6.0),
                      Row(
                        children: <Widget>[
                          DocumentType(
                              type:
                                  resourceItem.resourceMimeType?.mimeTypeName ??
                                      "--"),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              if (bookmarked) {
                                ref.watch(bookmarkProvider).del(resourceItem);
                              } else {
                                ref.watch(bookmarkProvider).add(resourceItem);
                              }
                            },
                            icon: Icon(
                              isMarked
                                  ? Icons.bookmark_added
                                  : Icons.bookmark_add_outlined,
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
              ],
            ),
          ),
        ));
  }

  Future openFile({required String url, String? fileName}) async {
    final file = await downloadFile(url, fileName!);

    if (file == null) {
      debugPrint("no file");
      return;
    }

    print('Path: ${file.path}');
    OpenFile.open(file.path);
  }

  Future<File?> downloadFile(String url, String name) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$name');

    try {
      final response = await Dio().get(
        url,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: true,
          receiveTimeout: 0,
        ),
      );

      debugPrint(url);

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();

      return file;
    } catch (e) {
      return null;
    }
  }
}
