import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:url_launcher/url_launcher.dart';

class AllWorldNewsTab extends StatelessWidget {
  AllWorldNewsTab({super.key});
  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "News",
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: apidata.latestnewsdata.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.3,
                  crossAxisSpacing: MediaQuery.of(context).size.height * 0.01,
                  mainAxisSpacing: MediaQuery.of(context).size.width * 0.03),
              itemBuilder: (gridviewcontext, index) {
                return InkWell(
                  onTap: () async {
                    final Uri uri =
                        Uri.parse(apidata.latestnewsdata[index].link);
                    await launchUrl(uri);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height,
                            child: CachedNetworkImage(
                              imageUrl:
                                  apidata.latestnewsdata[index].urlToImage,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: MediaQuery.of(context).size.width * 0.005,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Expanded(
                            child: Text(
                          apidata.latestnewsdata[index].title,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.025),
                        ))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
