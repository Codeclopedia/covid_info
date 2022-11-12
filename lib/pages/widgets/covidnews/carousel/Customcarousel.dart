import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/widgets/covidnews/carousel/carouseltile.dart';
import 'package:scoring_app/services/apicall.dart';

class CustomCarousel extends StatelessWidget {
  CustomCarousel({super.key});
  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => apidata.allnewsdata.isEmpty
        ? const CircularProgressIndicator.adaptive()
        : Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03),
            child: CarouselSlider.builder(
              itemCount: apidata.allnewsdata.length,
              itemBuilder: (Carosuelcontext, index, realIndex) {
                return CarouselTile(data: apidata.allnewsdata[index]);
              },
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 15 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ));
  }
}
