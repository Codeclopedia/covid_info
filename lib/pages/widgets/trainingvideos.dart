import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class TrainingVideos extends StatefulWidget {
  TrainingVideos({super.key});

  @override
  State<TrainingVideos> createState() => _TrainingVideosState();
}

class _TrainingVideosState extends State<TrainingVideos> {
  bool istapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Training videos",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                Row(
                  children: [
                    const Text(
                      "More",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.grey,
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    istapped = true;
                  });
                  await Future.delayed(const Duration(seconds: 1));
                  final Uri videourl =
                      Uri.parse("https://www.youtube.com/watch?v=tISdxqDnAuA");
                  await launchUrl(videourl);
                  setState(() {
                    istapped = false;
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(69, 187, 165, 214)),
                  child: istapped
                      ? Center(
                          child: CircularProgressIndicator.adaptive(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Theme.of(context).indicatorColor)),
                        )
                      : Row(
                          children: [
                            Lottie.asset(
                                "assets/lottie/100163-use-mask (1).json",
                                fit: BoxFit.contain),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Safety and healthy topics",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Text(
                                    "Learn about different safety guidelines and precaution of covid through online videos and classes.",
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.025,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
