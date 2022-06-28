import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/providers.dart';
import 'package:fotg/widgets/states/state_list.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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
