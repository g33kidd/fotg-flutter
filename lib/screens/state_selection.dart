import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/model/state.dart';

import '../providers.dart';
import '../widgets/states/state_list.dart';

class StateSelectionScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(stateProvider).loading;
    final states = ref.watch(stateProvider).states;

    return Scaffold(
      body: Container(
        child: (!loading)
            ? StateList(
                states: states,
                onSelectState: (StateModel state) {
                  ref.read(stateProvider).selectState(state);
                  Navigator.pushNamed(context, '/search');
                  print(state.stateName);
                  // Navigate somewhere
                },
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
