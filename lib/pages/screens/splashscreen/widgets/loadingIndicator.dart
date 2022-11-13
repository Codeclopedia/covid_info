import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spring/spring.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Spring.fadeIn(
      delay: Duration(seconds: 2),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.height * 0.04,
        child: Spring.fadeIn(
            child: Lottie.asset("assets/lottie/loading_indicator.json")),
      ),
    );
  }
}
