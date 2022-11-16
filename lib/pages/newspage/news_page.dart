import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/widgets/covidnews/carousel/Customcarousel.dart';
import 'package:scoring_app/pages/widgets/covidnews/covidnews.dart';
import 'package:scoring_app/services/apicall.dart';

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
        title: Text("News"),
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
            child: Text(
              "Explore",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold),
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
          )
        ],
      ),
    );
  }
}
