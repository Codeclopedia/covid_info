import 'package:flutter/material.dart';
import 'package:scoring_app/models/Covidtrackerdata.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/widgets/countrydetaileddatatile.dart';

class CountryDetailedData extends StatelessWidget {
  final CovidTrackerData countrydata;
  const CountryDetailedData({super.key, required this.countrydata});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CountryDetailedDataTile(
              title: "Test Population ", data: countrydata.population),
          CountryDetailedDataTile(
              title: "Total Covid cases ",
              data: countrydata.totalCases.toString()),
          CountryDetailedDataTile(
              title: "Total Recovered cases ",
              data: countrydata.totalRecovered.toString()),
          CountryDetailedDataTile(
              title: "Total Deaths ", data: countrydata.totalDeaths.toString()),
          CountryDetailedDataTile(
              title: "Total Active cases ",
              data: countrydata.activeCases.toString()),
          CountryDetailedDataTile(
              title: "Test Percentage ",
              data: countrydata.testPercentage.toString()),
          CountryDetailedDataTile(
              title: "Case Fatality Rate ",
              data: countrydata.caseFatalityRate.toString()),
          CountryDetailedDataTile(
              title: "Death 1Mpop ", data: countrydata.deaths1MPop.toString()),
          CountryDetailedDataTile(
              title: "Infection Risk ",
              data: countrydata.infectionRisk.toString()),
          CountryDetailedDataTile(
              title: "Recovery Proporation ",
              data: countrydata.recoveryProporation.toString()),
        ],
      ),
    );
  }
}
