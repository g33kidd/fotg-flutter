import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';

class NoResults extends StatelessWidget {
  const NoResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/NRCS-WaterdropRoundLogo.png",
              height: 65,
            ),
            const SizedBox(height: 20),
            const Text(
              "NRCS",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, color: NrcsBlue),
            ),
            const SizedBox(height: 5),
            Text(
              "Field Office Technical Guide",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[900]),
            ),
            const SizedBox(height: 25),
            Text(
              "Use the search bar to find technical guides by state",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[800]),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
