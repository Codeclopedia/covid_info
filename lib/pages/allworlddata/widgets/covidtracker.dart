import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/countrydata.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:scoring_app/services/datasearch.dart';

class CovidTracker extends StatelessWidget {
  CovidTracker({super.key});
  API apidata = Get.find();
  DataSearchController searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          child: Text(
            "Covid Tracker",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.1,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rank",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03),
                ),
                const Text(
                  "Country",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("Total Cases"),
                const Text("Active Cases"),
                const Text("Total Recovered"),
              ],
            ),
          ),
        ),
        Obx(
          () => ListView.builder(
            shrinkWrap: true,
            itemCount: apidata.Covidtrackerdata.length,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              print(searchController.search);
              Widget widget = apidata.Covidtrackerdata[index].country
                      .contains(searchController.search)
                  ? Column(
                      children: [
                        InkWell(
                          onTap: () {
                            apidata.Covidtrackerdata[index].threeLetterSymbol ==
                                    null
                                ? null
                                : Get.to(() => Countrydata(
                                    countrydata:
                                        apidata.Covidtrackerdata[index]));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02),
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(apidata.Covidtrackerdata[index].rank
                                    .toString()),
                                Text(
                                  apidata.Covidtrackerdata[index].country
                                      .toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(apidata.Covidtrackerdata[index].totalCases
                                    .toString()),
                                Text(apidata.Covidtrackerdata[index].activeCases
                                    .toString()),
                                Text(apidata
                                    .Covidtrackerdata[index].totalRecovered
                                    .toString()),
                              ],
                            ),
                          ),
                        ),
                        const Divider()
                      ],
                    )
                  : Container();
              return widget;
            },
          ),
        )
      ],
    );
  }
}
