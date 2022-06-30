import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/constants.dart';
import 'package:fotg/model/state.dart';
import 'package:fotg/providers.dart';
import 'package:fotg/widgets/document/document_card.dart';
import 'package:fotg/widgets/search/search_box.dart';
import 'package:fotg/widgets/states/state_selection_dropdown.dart';

import '../widgets/search/display_results.dart';
import '../widgets/shared/no_results.dart';
import "../widgets/search/search_box.dart";

class SearchScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchProvider);
    final states = ref.watch(stateProvider);

    final hasResults = search.resourceItems.isNotEmpty;
    final notSearched = search.resourceItems.isEmpty;
    final loading = search.loading;

    debugPrint(loading.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: NrcsBlue,
        elevation: 0,
        titleSpacing: 0,
        actions: (states.selected != null)
            ? const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: StateSelectionDropdown(abbreviated: true),
                ),
              ]
            : null,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBox(),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/NRCS-WaterdropRoundLogo.png"),
        ),
      ),
      body: states.selected != null
          ? (hasResults
              ? (loading
                  ? const Center(child: CircularProgressIndicator())
                  : const DisplayResults())
              : const NoResults())
          : const NoResults(selectState: true),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: NrcsBlue,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        // TODO hook this up to navigation.
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
