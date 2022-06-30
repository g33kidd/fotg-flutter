import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/constants.dart';

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

    // List<DropdownMenuItem<StateModel>> dropdownValues =
    //     provider.states.map<DropdownMenuItem<StateModel>>((s) {
    //   final text = abbreviated ? s.stateAbbreviation : s.stateName;

    //   return DropdownMenuItem<StateModel>(
    //     child: Text(text),
    //     enabled: provider.selected != s,
    //     alignment: Alignment.center,
    //     value: s,
    //   );
    // }).toList();

    List<Map<String, dynamic>> dropdownList =
        provider.states.map<Map<String, dynamic>>((state) {
      final label = abbreviated ? state.stateAbbreviation : state.stateName;

      return {
        'label': label,
        'value': state,
      };
    }).toList();

    final defaultValue = abbreviated ? 'N/A' : 'Select your State';
    final placeholder = provider.selected != null
        ? (abbreviated
            ? provider.selected!.stateAbbreviation
            : provider.selected!.stateName)
        : defaultValue;

    return CoolDropdown(
      dropdownList: dropdownList,
      dropdownHeight: 300,
      dropdownPadding: const EdgeInsets.all(0),
      dropdownAlign: 'center',
      resultTS: const TextStyle(fontSize: 14, color: Colors.black),
      resultAlign: Alignment.center,
      placeholderTS: const TextStyle(fontSize: 16, color: Colors.black),
      selectedItemTS: const TextStyle(fontSize: 16, color: NrcsBlue),
      unselectedItemTS: const TextStyle(fontSize: 16, color: NrcsBlue),
      resultWidth: abbreviated ? 95 : 220,
      placeholder: placeholder,
      onChange: (state) {
        if (state != null && state['value'] != null) {
          provider.selectState(state['value']);
        }
      },
    );
  }
}
