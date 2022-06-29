import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/constants.dart';
import 'package:fotg/model/state.dart';
import 'package:fotg/providers.dart';
import 'package:fotg/widgets/search/search_box.dart';
import 'package:fotg/widgets/states/state_selection_dropdown.dart';

import '../widgets/search/display_results.dart';
import '../widgets/shared/no_results.dart';
import "../widgets/search/search_box.dart";

class SearchScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: NrcsBlue,
        elevation: 0,
        actions: [
          StateSelectionDropdown(),
        ],
        title: SearchBox(),
        leading: Image.asset("assets/NRCS-WaterdropRoundLogo.png"),
      ),
      body: DisplayResults(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: NrcsBlue,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        // TODO hook this up to navigation.
        items: [
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
