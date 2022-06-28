import 'package:flutter/material.dart';
import 'package:fotg/constants.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: NrcsBlue,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset("assets/NRCS-WaterdropRoundLogo.png"),
        ),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: NrcsBlue,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmarks",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: "Downloads",
          ),
        ],
      ),
    );
  }
}
