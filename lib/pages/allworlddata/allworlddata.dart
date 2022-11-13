import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/countrydata.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:url_launcher/url_launcher.dart';

class Allworlddata extends StatelessWidget {
  Allworlddata({super.key});
  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
        return true;
      },
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: Theme.of(context).primaryColor)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search"),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "News",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.02),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: apidata.allnewsdata.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 0.3,
                                    crossAxisSpacing: MediaQuery.of(context)
                                            .size
                                            .height *
                                        0.01,
                                    mainAxisSpacing:
                                        MediaQuery.of(context).size.width *
                                            0.03),
                            itemBuilder: (gridviewcontext, index) {
                              return InkWell(
                                onTap: () async {
                                  final Uri uri = Uri.parse(
                                      apidata.allnewsdata[index].link);
                                  await launchUrl(uri);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Theme.of(context).primaryColor),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: CachedNetworkImage(
                                            imageUrl: apidata
                                                .allnewsdata[index].urlToImage,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: double.infinity,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.005,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      Expanded(
                                          child: Text(
                                        apidata.allnewsdata[index].title,
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.025),
                                      ))
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
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
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                0.005),
                                    child: const Text(
                                      "Total deaths",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(apidata.worlddata[0].totalDeaths
                                      .toString()),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.005),
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
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                0.005),
                                    child: const Text(
                                      "Total Recovered",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(apidata.worlddata[0].totalRecovered
                                      .toString()),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.005),
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
                  ), //
                  Text(
                    "Covid Tracker",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rank",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
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
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                apidata.Covidtrackerdata[index]
                                            .threeLetterSymbol ==
                                        null
                                    ? null
                                    : Get.to(() => Countrydata(
                                        isocode: apidata.Covidtrackerdata[index]
                                            .threeLetterSymbol));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor)),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.02),
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(apidata.Covidtrackerdata[index].rank
                                        .toString()),
                                    Text(
                                      apidata.Covidtrackerdata[index].country
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(apidata
                                        .Covidtrackerdata[index].totalCases
                                        .toString()),
                                    Text(apidata
                                        .Covidtrackerdata[index].activeCases
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
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
