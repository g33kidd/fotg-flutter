import 'package:flutter/material.dart';
import 'package:fotg/model/state.dart';

class StateList extends StatelessWidget {
  final List<StateModel> states;

  const StateList({Key? key, required this.states}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: states.length,
      itemBuilder: (ctx, i) {
        final state = states[i];
        return Text(
          "${state.stateName} (${state.stateCode}) - ${state.stateAbbreviation}",
        );
      },
    );
  }
}
