import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:scoring_app/services/apicall.dart';

class CovidHistoryTab extends StatelessWidget {
  CovidHistoryTab({super.key});
  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Total Covid history",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).size.height * 0.005),
                          child: const Text(
                            "Total deaths",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(apidata.worlddata[0].totalDeaths.toString()),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.005),
                          child: Text(
                            "New cases",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.8)),
                          ),
                        ),
                        Text(
                          "+ ${apidata.worlddata[0].newDeaths.toString()}",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Theme.of(context).primaryColor)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom:
                                  MediaQuery.of(context).size.height * 0.005),
                          child: const Text(
                            "Total Recovered",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(apidata.worlddata[0].totalRecovered.toString()),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.005),
                          child: Text(
                            "New cases",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.8)),
                          ),
                        ),
                        Text(
                          "+ ${apidata.worlddata[0].newRecovered.toString()}",
                          style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
