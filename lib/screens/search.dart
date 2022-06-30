import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/constants.dart';
import 'package:fotg/model/state.dart';
import 'package:fotg/providers.dart';
import 'package:fotg/widgets/document/document_card.dart';
import 'package:fotg/widgets/search/search_box.dart';
import 'package:fotg/widgets/shared/app_scaffold.dart';
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

    return AppScaffold(
      displaySearch: true,
      screenTitle: "Search",
      child: states.selected != null
          ? (hasResults
              ? (loading
                  ? const Center(child: CircularProgressIndicator())
                  : const DisplayResults())
              : const NoResults())
          : const NoResults(selectState: true),
    );
  }
}
