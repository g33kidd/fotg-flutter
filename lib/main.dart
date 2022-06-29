import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/screens/search.dart';

import 'screens/state_selection.dart';
import 'screens/welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: FOTGApp()));
}

// TODO create a Widget that initializes most required app data on load.
//      replacing the WelcomeScreen
class FOTGApp extends StatelessWidget {
  const FOTGApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      routes: {
        '/stateSelection': (_) => StateSelectionScreen(),
        '/search': (_) => SearchScreen(),
      },
    );
  }
}
