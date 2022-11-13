import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scoring_app/pages/allworlddata/widgets/covidtracker.dart';

class CovidTrackerPage extends StatelessWidget {
  const CovidTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CovidTracker(),
      ]),
    );
  }
}
