import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:scoring_app/models/Covidtrackerdata.dart';
import 'package:scoring_app/services/apicall.dart';

class StatesData extends StatefulWidget {
  final CovidTrackerData countrydata;
  StatesData({super.key, required this.countrydata});

  @override
  State<StatesData> createState() => _StatesDataState();
}

class _StatesDataState extends State<StatesData> {
  API apidata = Get.find();

  int currentindex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "States Data",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.1,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        FutureBuilder(
          future: apidata
              .getstatesdata(widget.countrydata.threeLetterSymbol.toString()),
          builder: (Futurecontext, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: apidata.statedata.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, statelistindex) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.01),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            currentindex == statelistindex
                                ? setState(() {
                                    currentindex = -1;
                                  })
                                : setState(() {
                                    currentindex = statelistindex;
                                  });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.02,
                                  vertical: MediaQuery.of(context).size.height *
                                      0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      apidata.statedata[statelistindex].province
                                          .toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.045)),
                                  Icon(
                                    currentindex == statelistindex
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: Theme.of(context).primaryColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        currentindex == statelistindex
                            ? Column(
                                children: [
                                  ListTile(
                                    leading: Text("StateName"),
                                    trailing: Text(apidata
                                        .statedata[statelistindex].province
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("State Symbol"),
                                    trailing: Text(apidata
                                        .statedata[statelistindex]
                                        .twoLetterSymbol
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("Total Cases"),
                                    trailing: Text(apidata
                                        .statedata[statelistindex].confirmed
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("New Recovered"),
                                    trailing: Text(apidata
                                        .statedata[statelistindex].recovered
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("Total Deaths"),
                                    trailing: Text(apidata
                                        .statedata[statelistindex].deaths
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("Total Active Cases"),
                                    trailing: Text(apidata
                                        .statedata[statelistindex].active
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("Case fatility Rate"),
                                    trailing: Text(apidata
                                        .statedata[statelistindex].fatalityRate
                                        .toString()),
                                  ),
                                ],
                              )
                            : Container()
                      ],
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator.adaptive();
          },
        )
      ],
    );
  }
}
