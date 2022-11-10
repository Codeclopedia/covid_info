import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scoring_app/pages/widgets/covidtesttab.dart';
import 'package:scoring_app/pages/widgets/decoration/pageline.dart';
import 'package:scoring_app/pages/widgets/facilities.dart';
import 'package:scoring_app/pages/widgets/trainingvideos.dart';
import 'package:scoring_app/presets/appdata.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
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
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Pageline(),
                      CovidTestTab(),
                      Facilities(),
                      TrainingVideos(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.07),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Coronovirus Map",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Today's Statistics",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
