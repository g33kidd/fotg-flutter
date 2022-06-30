import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/constants.dart';

import '../../providers.dart';
import '../search/search_box.dart';
import '../states/state_selection_dropdown.dart';

class AppScaffold extends ConsumerWidget {
  final String? screenTitle;
  final bool displaySearch;
  final int pageIndex;
  final Widget child;

  const AppScaffold({
    Key? key,
    this.screenTitle,
    this.displaySearch = false,
    this.pageIndex = 0,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(stateProvider).selected;

    final actions = displaySearch
        ? (selected != null)
            ? const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: StateSelectionDropdown(abbreviated: true),
                ),
              ]
            : null
        : null;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: NrcsBlue,
        elevation: 0,
        titleSpacing: 0,
        actions: actions,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: displaySearch ? SearchBox() : Text(screenTitle ?? "NRCS FOTG"),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/NRCS-WaterdropRoundLogo.png"),
        ),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: NrcsBlue,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        currentIndex: pageIndex,
        onTap: (int page) {
          if (page == 0) {
            Navigator.pushReplacementNamed(context, '/search');
          }

          if (page == 1) {
            Navigator.pushReplacementNamed(context, '/bookmarks');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmarks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: "Downloads",
          ),
        ],
      ),
    );
  }
}
