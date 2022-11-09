import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scoring_app/presets/appdata.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        child: ListView(
          children: [
            Lottie.asset("assets/lottie/mask.json"),
          ],
        ),
      ),
    );
  }
}
