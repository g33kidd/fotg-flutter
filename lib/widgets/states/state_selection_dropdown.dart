import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/state.dart';
import '../../providers.dart';

class StateSelectionDropdown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(stateProvider);

    List<DropdownMenuItem<StateModel>> dropdownValues =
        provider.states.map<DropdownMenuItem<StateModel>>((s) {
      return DropdownMenuItem<StateModel>(
        child: Text(s.stateAbbreviation.toUpperCase()),
        value: s,
      );
    }).toList();

    return DropdownButton<StateModel>(
      value: provider.selected,
      onChanged: (s) => provider.selectState(s),
      items: dropdownValues,
    );
  }
}
