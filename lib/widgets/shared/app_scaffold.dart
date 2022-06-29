import 'package:flutter/material.dart';

// TODO general container widget for Scaffolding a screen.
class AppScaffold extends StatelessWidget {
  final Widget appBar;

  const AppScaffold({Key? key, required this.navbar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(),
      body: body,
    );
  }
}
