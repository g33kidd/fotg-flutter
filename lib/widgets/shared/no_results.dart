import 'package:flutter/material.dart';
import 'package:fotg/widgets/states/state_selection_dropdown.dart';

class NoResults extends StatelessWidget {
  final bool selectState;

  const NoResults({Key? key, this.selectState = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/NRCS-WaterdropRoundLogo.png", height: 75),
          const SizedBox(height: 20),
          const Text(
            "NRCS Field Office Technical Guide",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 20),
          if (!selectState)
            Text(
              "Use the search bar at the top to search documents.",
              style: TextStyle(color: Colors.black.withAlpha(150)),
            ),
          if (selectState) const StateSelectionDropdown(abbreviated: false),
        ],
      ),
    );
  }
}
