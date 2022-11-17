import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/models/Covidtrackerdata.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:vertical_barchart/vertical-barchart.dart';
import 'package:vertical_barchart/vertical-barchartmodel.dart';
import 'package:vertical_barchart/vertical-legend.dart';

class CountryNewData extends StatelessWidget {
  final CovidTrackerData countrydata;
  CountryNewData({super.key, required this.countrydata});

  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    List<VBarChartModel> bardata = [
      VBarChartModel(
        index: 0,
        label: "New Cases",
        colors: [Colors.blue, Colors.red],
        jumlah: countrydata.newCases.toDouble(),
        tooltip: countrydata.newCases.toString(),
      ),
      VBarChartModel(
        index: 1,
        label: "New Recovered",
        colors: [Colors.yellow, Colors.green],
        jumlah: countrydata.newRecovered.toDouble(),
        tooltip: countrydata.newRecovered.toString(),
      ),
      VBarChartModel(
        index: 2,
        label: "New Deaths",
        colors: [Colors.red, Color.fromARGB(255, 128, 8, 0)],
        jumlah: countrydata.newDeaths.toDouble(),
        tooltip: countrydata.newDeaths.toString(),
      ),
      VBarChartModel(
        index: 3,
        label: "Active Cases",
        colors: [Colors.teal, Color.fromARGB(255, 0, 136, 34)],
        jumlah: countrydata.activeCases.toDouble(),
        tooltip: countrydata.activeCases.toString(),
      ),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(15)),
        child: VerticalBarchart(
          background: Colors.transparent,
          maxX: countrydata.activeCases.toDouble(),
          data: bardata,
          showLegend: true,
          showBackdrop: true,
          barStyle: BarStyle.CIRCLE,
          alwaysShowDescription: true,
          labelColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
