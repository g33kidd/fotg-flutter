import 'package:flutter/material.dart';
import 'package:fotg/model/state.dart';
import 'package:fotg/widgets/states/state_list_item.dart';

class StateList extends StatelessWidget {
  final List<StateModel> states;
  final Function(StateModel) onSelectState;

  const StateList({Key? key, required this.states, required this.onSelectState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: states.length,
      itemBuilder: (ctx, i) {
        final state = states[i];
        return StateListItem(
          state: state,
          onTap: () => onSelectState(state),
        );
      },
    );
  }
}
