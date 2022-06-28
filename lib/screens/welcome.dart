import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen> {
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        color: const Color(0xFF205493),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                "assets/NRCS-WaterdropRoundLogo.png",
                height: 64,
              ),
              Text(
                "Some information about FOTG and quick information to get started should go here.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/stateSelection',
                ), //pushReplacementNamed?
                child: Text("Select your State"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
