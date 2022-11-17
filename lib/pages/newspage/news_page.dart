import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/widgets/covidnews/carousel/Customcarousel.dart';
import 'package:scoring_app/pages/widgets/covidnews/covidnews.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spring/spring.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatelessWidget {
  NewsPage({super.key});
  API apidata = Get.find();

  List<Map> Exploretabdata = [
    {
      "imageurl":
          "https://static.toiimg.com/thumb/msid-88597490/88597490.jpg?width=500&resizemode=4",
      "title": "Covid News"
    },
    {
      "imageurl":
          "https://images.moneycontrol.com/static-mcnews/2022/09/Health-insurance.png?impolicy=website&width=770&height=431",
      "title": "Health News"
    },
    {
      "imageurl":
          "https://www.news-medical.net/images/news/ImageForNews_730228_16678238396437151.jpg",
      "title": "Vaccines News"
    },
    {
      "imageurl": "https://images.indianexpress.com/2022/05/Covid-live.jpg",
      "title": "Hospital News"
    },
    {
      "imageurl":
          "https://static.toiimg.com/thumb/msid-74744272,width-400,resizemode-4/74744272.jpg",
      "title": "World Covid News"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Theme.of(context).primaryColor,
            )),
        title: const Text("News"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.02),
            child: Text(
              "Latest News",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CustomCarousel(),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.00),
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.grey,
              child: Text(
                "Explore",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.08,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.03),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            Exploretabdata[index]["imageurl"]),
                      ),
                      Text(
                        Exploretabdata[index]["title"],
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          StreamBuilder(
            stream: apidata.extranewsdata.stream,
            builder: (streambuildercontext, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: apidata.extranewsdata.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02),
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    print(
                        " extra length at function call: ${apidata.extranewsdata.length}");
                    try {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.01,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03),
                        child: InkWell(
                          onTap: () async {
                            final Uri uri =
                                Uri.parse(apidata.extranewsdata[index].link);
                            await launchUrl(uri);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.13,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: CachedNetworkImage(
                                      imageUrl: apidata
                                          .extranewsdata[index].urlToImage,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.02,
                                      vertical:
                                          MediaQuery.of(context).size.height *
                                              0.01),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width -
                                        (MediaQuery.of(context).size.width *
                                                0.03) *
                                            2 -
                                        MediaQuery.of(context).size.width *
                                            0.4 -
                                        (MediaQuery.of(context).size.width *
                                                0.02) *
                                            2,
                                    height: MediaQuery.of(context).size.height *
                                            0.13 -
                                        (MediaQuery.of(context).size.height *
                                                0.01) *
                                            2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.13 -
                                              (MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.01) *
                                                  2 -
                                              MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
                                          child: Text(
                                            apidata.extranewsdata[index].title,
                                            overflow: TextOverflow.fade,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                              child: FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(apidata
                                                    .extranewsdata[index]
                                                    .reference),
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.015,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                              child: FittedBox(
                                                fit: BoxFit.contain,
                                                child: Text(
                                                  apidata.extranewsdata[index]
                                                      .pubDate
                                                      .toString()
                                                      .replaceRange(10, 24, ""),
                                                  style: const TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    } catch (e) {
                      return const Text('Image not found');
                    }
                  },
                );
              }

              return Shimmer.fromColors(
                  highlightColor: Colors.white,
                  baseColor: Colors.grey,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 200,
                            )
                          ],
                        )
                      ],
                    ),
                  ));
            },
          )
        ],
      ),
    );
  }
}
