import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/providers.dart';
import 'package:fotg/widgets/states/state_list.dart';

class HomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => startup());
  }

  void startup() async {
    await ref.watch(stateProvider).init();
  }

  @override
  Widget build(BuildContext context) {
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
