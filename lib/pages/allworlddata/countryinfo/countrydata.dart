import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:scoring_app/models/Covidtrackerdata.dart';

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
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          countrydata.country,
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.1,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          countrydata.continent.toString(),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Covid cases : ${countrydata.totalCases}",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            color: Theme.of(context).primaryColor),
                      )
                    ],
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
