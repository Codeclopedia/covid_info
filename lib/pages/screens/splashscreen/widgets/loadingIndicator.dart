import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spring/spring.dart';

class LoadingIndicator extends StatelessWidget {
  final height;
  final width;
  const LoadingIndicator(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Spring.fadeIn(
      delay: const Duration(seconds: 2),
      child: SizedBox(
        height: height,
        width: width,
        child: Spring.fadeIn(
            child: Lottie.asset("assets/lottie/99274-loading.json",
                fit: BoxFit.fill)),
      ),
    );
  }
}
