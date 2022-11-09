import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spring/spring.dart';

class Screen extends StatelessWidget {
  final String mainlottie;
  final String heading;
  final String subheading;
  final String message;
  final String backgroundlottie;
  const Screen(
      {super.key,
      required this.heading,
      required this.subheading,
      required this.mainlottie,
      required this.backgroundlottie,
      required this.message});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Spring.fadeIn(
                  child: backgroundlottie == ""
                      ? Container()
                      : Lottie.asset(backgroundlottie)),
              Spring.fadeIn(child: Lottie.asset(mainlottie)),
            ],
          ),
          Spring.fadeIn(
            delay: const Duration(seconds: 2),
            child: Text(
              heading,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01),
            child: Spring.fadeIn(
              delay: const Duration(seconds: 3),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.8,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    subheading,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
                vertical: MediaQuery.of(context).size.height * 0.03),
            child: Spring.fadeIn(
              delay: const Duration(seconds: 4),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
