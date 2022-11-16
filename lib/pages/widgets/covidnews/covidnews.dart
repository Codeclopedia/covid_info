import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/widgets/covidnews/carousel/Customcarousel.dart';
import 'package:scoring_app/services/apicall.dart';

class CovidNews extends StatelessWidget {
  CovidNews({super.key});
  final API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.07),
              child: Text(
                "Latest News",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
            CustomCarousel()
          ],
        ),
      ),
    );
  }
}
