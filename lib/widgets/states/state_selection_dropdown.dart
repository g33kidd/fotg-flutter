import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/state.dart';
import '../../providers.dart';

class StateSelectionDropdown extends ConsumerWidget {
  final bool abbreviated;

  const StateSelectionDropdown({
    Key? key,
    this.abbreviated = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(stateProvider);
    final search = ref.watch(searchProvider);

    List<DropdownMenuItem<StateModel>> dropdownValues =
        provider.states.map<DropdownMenuItem<StateModel>>((s) {
      final text = abbreviated ? s.stateAbbreviation : s.stateName;

      return DropdownMenuItem<StateModel>(
        child: Text(text),
        enabled: provider.selected != s,
        alignment: Alignment.center,
        value: s,
      );
    }).toList();

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      child: DropdownButton<StateModel>(
        value: provider.selected,
        underline: Container(),
        onChanged: (s) {
          if (s != null) {
            provider.selectState(s);

            // can be moved to search component
            search.search("water", s.stateCode);
          }
        },
        items: dropdownValues,
      ),
    );
  }
}
