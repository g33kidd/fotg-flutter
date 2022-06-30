import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/model/resource_item.dart';
import 'package:fotg/model/resource_mime_type.dart';
import 'package:fotg/screens/bookmarks.dart';
import 'package:fotg/screens/search.dart';
import 'package:hive_flutter/adapters.dart';

import 'model/subject.dart';
import 'screens/welcome.dart';

void main() async {
  Hive.registerAdapter(ResourceItemAdapter());
  Hive.registerAdapter(ResourceMimeTypeAdapter());
  Hive.registerAdapter(SubjectAdapter());
  await Hive.initFlutter();
  await Hive.openBox('bookmarks');

  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: FOTGApp(),
    ),
  );
}

class FOTGApp extends StatelessWidget {
  const FOTGApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(),
      routes: {
        '/search': (_) => SearchScreen(),
        '/bookmarks': (_) => BookmarkScreen(),
      },
    );
  }
}
