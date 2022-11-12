import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/widgets/covidnews/covidnews.dart';
import 'package:scoring_app/pages/widgets/covidtesttab.dart';
import 'package:scoring_app/pages/widgets/covidtotalstats/covidMapAndStats.dart';
import 'package:scoring_app/pages/widgets/decoration/pageline.dart';
import 'package:scoring_app/pages/widgets/facilities.dart';
import 'package:scoring_app/pages/widgets/covidtotalstats/stats/statsBox.dart';
import 'package:scoring_app/pages/widgets/trainingvideos.dart';
import 'package:scoring_app/services/apicall.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: Theme.of(context).brightness == Brightness.dark
                    ? "https://cloudfront-us-east-1.images.arcpublishing.com/gray/IJPS3FXTCNITDC53CYGGD62ZGY.jpg"
                    : "https://img.freepik.com/premium-vector/coronavirus-covid-19-fighters-02_126288-23.jpg?w=2000",
                fit: BoxFit.cover,
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Image.asset(
                          "assets/images/logo.png",
                          scale: MediaQuery.of(context).size.width * 0.004,
                        ),
                        Icon(
                          Icons.help,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.07,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const Pageline(),
                      const CovidTestTab(),
                      const Facilities(),
                      TrainingVideos(),
                      const CovidMapAndStats(),
                      CovidNews()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
