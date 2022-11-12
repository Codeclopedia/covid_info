import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            Obx(() => apidata.allnewsdata.isEmpty
                ? CircularProgressIndicator.adaptive()
                : CarouselSlider.builder(
                    itemCount: apidata.allnewsdata.length,
                    itemBuilder: (context, index, realIndex) {
                      return GestureDetector(
                        onTap: () async {
                          final Uri url =
                              Uri.parse(apidata.allnewsdata[index].link);
                          await launchUrl(url);
                          print("working");
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        apidata.allnewsdata[index].urlToImage,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    apidata.allnewsdata[index].reference,
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Text(apidata.allnewsdata[index].title)
                            ],
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      aspectRatio: 9 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}
