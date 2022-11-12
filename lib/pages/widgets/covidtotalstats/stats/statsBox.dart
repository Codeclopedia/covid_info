import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/widgets/covidtotalstats/stats/statstile.dart';
import 'package:scoring_app/services/apicall.dart';

class StatsBox extends StatelessWidget {
  StatsBox({super.key});
  API datacontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    double todayrecoveredwidth =
        double.parse(datacontroller.worlddata[0].newRecovered.toString()) /
            (datacontroller.worlddata[0].newCases.toDouble() +
                datacontroller.worlddata[0].newDeaths.toDouble() +
                datacontroller.worlddata[0].newRecovered.toDouble());
    double todaydeathwidth =
        double.parse(datacontroller.worlddata[0].newDeaths.toString()) /
            (datacontroller.worlddata[0].newCases.toDouble() +
                datacontroller.worlddata[0].newDeaths.toDouble() +
                datacontroller.worlddata[0].newRecovered.toDouble());
    double todayactivewidth =
        double.parse(datacontroller.worlddata[0].newCases.toString()) /
            (datacontroller.worlddata[0].newCases.toDouble() +
                datacontroller.worlddata[0].newDeaths.toDouble() +
                datacontroller.worlddata[0].newRecovered.toDouble());

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.01,
              top: MediaQuery.of(context).size.height * 0.02),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.01),
                  child: Container(
                    color: Colors.yellow,
                    width: MediaQuery.of(context).size.width * todayactivewidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.01),
                  child: Container(
                    color: Colors.green,
                    width: MediaQuery.of(context).size.width *
                            todayrecoveredwidth -
                        MediaQuery.of(context).size.width * 0.17,
                  ),
                ),
                Container(
                  color: Colors.pinkAccent,
                  width: MediaQuery.of(context).size.width * todaydeathwidth,
                ),
              ],
            ),
          ),
        ),
        StatsTile(
            casetype: "Active",
            numberofcases: datacontroller.worlddata[0].newCases.toString(),
            casecolor: Colors.yellow),
        StatsTile(
            casetype: "Recovered",
            numberofcases: datacontroller.worlddata[0].newRecovered.toString(),
            casecolor: Colors.green),
        StatsTile(
            casetype: "Death",
            numberofcases: datacontroller.worlddata[0].newDeaths.toString(),
            casecolor: Colors.pinkAccent),
      ],
    );
  }
}
