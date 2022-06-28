import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            ? StateList(states: states)
            : const CircularProgressIndicator(),
      ),
    );
  }
}
