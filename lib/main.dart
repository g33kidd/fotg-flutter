import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/home.dart';
import 'screens/loader.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: FOTGApp()));
}

class FOTGApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        // '/home': (_) => HomePage(),
        // '/select-state': (_) => StateSelectionPage(),
      },
    );
  }
}
