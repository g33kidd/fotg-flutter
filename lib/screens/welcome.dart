import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => startup());
  }

  void startup() async {
    await ref.watch(stateProvider).init();
    Navigator.pushReplacementNamed(context, '/search');
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
