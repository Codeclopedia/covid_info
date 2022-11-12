import 'package:flutter/material.dart';
import 'package:scoring_app/pages/widgets/covidtotalstats/stats/statsBox.dart';

class CovidMapAndStats extends StatelessWidget {
  const CovidMapAndStats({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime dateToday = new DateTime.now();
    String date = dateToday.toString().substring(0, 10);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Coronovirus Map",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.03),
              child: Image.asset(
                  "assets/images/2020-coronavirus-cases-world-map-facebook.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Today's Statistics",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
            StatsBox(),
          ],
        ),
      ),
    );
  }
}
