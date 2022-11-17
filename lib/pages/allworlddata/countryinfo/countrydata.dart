import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/models/Covidtrackerdata.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/widgets/CountrynamingTile.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/widgets/countryNewdata.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/widgets/countrydetaileddata.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/widgets/statesdata.dart';

import '../../../services/apicall.dart';

class Countrydata extends StatelessWidget {
  final CovidTrackerData countrydata;
  Countrydata({super.key, required this.countrydata});
  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apidata.getstatesdata(countrydata.threeLetterSymbol),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: ListView(
                shrinkWrap: true,
                children: [
                  CountryNamingTile(
                      CountryRank: countrydata.rank.toString(),
                      CountryName: countrydata.country.toString(),
                      Continent: countrydata.continent.toString()),
                  CountryDetailedData(
                    countrydata: countrydata,
                  ),
                  CountryNewData(countrydata: countrydata),
                  StatesData(
                    countrydata: countrydata,
                  )
                ],
              ),
            ));
          }

          return const Center(child: CircularProgressIndicator.adaptive());
        },
      ),
    );
  }
}
