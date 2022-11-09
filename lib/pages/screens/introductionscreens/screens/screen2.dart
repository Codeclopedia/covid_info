import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spring/spring.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
          Spring.fadeIn(child: Lottie.asset("assets/lottie/mask.json")),
          Spring.fadeIn(
            delay: const Duration(seconds: 2),
            child: Text(
              "Is Covid still around or gone?",
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
              child: Text(
                "NO ONE KNOWS",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    fontWeight: FontWeight.bold),
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
                "We've never been in a better place to end the Covid-19 pandemic, but only if all countries, manufacturers, communities and individuals step up and seize this opportunity. Otherwise, we run the risk of more variants, more deaths, disruption and uncertainty. Let's finish the job!",
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
