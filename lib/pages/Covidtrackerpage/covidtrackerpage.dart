import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/allworlddata/widgets/covidtracker.dart';
import 'package:scoring_app/pages/allworlddata/widgets/worlddatasearchtab.dart';
import 'package:scoring_app/services/datasearch.dart';

class CovidTrackerPage extends StatelessWidget {
  CovidTrackerPage({super.key});
  DataSearchController searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: ListView(children: [
          WorlddataSearchTab(),
          CovidTracker(),
        ]),
      ),
      onWillPop: () async {
        searchController.search = "".obs;
        return true;
      },
    );
  }
}
