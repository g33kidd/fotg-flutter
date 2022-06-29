import 'package:flutter/material.dart';

class NoResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/NRCS-WaterdropRoundLogo.png", height: 75),
          SizedBox(height: 20),
          Text(
            "NRCS Field Office Technical Guide",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 20),
          Text(
            "Use the search bar at the top to search documents.",
            style: TextStyle(color: Colors.black.withAlpha(150)),
          ),
        ],
      ),
    );
  }
}
