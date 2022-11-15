import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scoring_app/presets/appdata.dart';
import 'package:spring/spring.dart';

class LogoAnimated extends StatelessWidget {
  const LogoAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    return Spring.fadeIn(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              applogo,
              fit: BoxFit.cover,
            )));
  }
}
