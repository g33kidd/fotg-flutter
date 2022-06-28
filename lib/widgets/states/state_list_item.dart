import 'package:flutter/cupertino.dart';
import 'package:fotg/model/state.dart';

class StateListItem extends StatelessWidget {
  final StateModel state;
  final Function()? onTap;

  const StateListItem({
    Key? key,
    this.onTap,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "${state.stateName} (${state.stateCode}) - ${state.stateAbbreviation}",
      ),
    );
  }
}
