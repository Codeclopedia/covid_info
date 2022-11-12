import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:scoring_app/models/allnewsmodel.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:url_launcher/url_launcher.dart';

class CarouselTile extends StatelessWidget {
  final News data;
  const CarouselTile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri url = Uri.parse(data.link);
        await launchUrl(url);
        print("working");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CachedNetworkImage(
                      imageUrl: data.urlToImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.5, 0.7, 1.0],
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.01,
                      vertical: MediaQuery.of(context).size.height * 0.005,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        data.title,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.035),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            data.reference,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.03,
                color: Colors.grey),
          )
        ],
      ),
    );
  }
}
