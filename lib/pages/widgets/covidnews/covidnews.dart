import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/widgets/covidnews/carousel/Customcarousel.dart';
import 'package:scoring_app/pages/widgets/covidnews/carousel/carouseltile.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:url_launcher/url_launcher.dart';

class CovidNews extends StatelessWidget {
  CovidNews({super.key});
  final API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07,
          vertical: MediaQuery.of(context).size.height * 0.02),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Latest News",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.05),
            ),
            CustomCarousel()
          ],
        ),
      ),
    );
  }
}
