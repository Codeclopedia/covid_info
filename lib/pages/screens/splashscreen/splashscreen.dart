import 'dart:async';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/dropdown_alert.dart';
import 'package:get/get.dart';
import 'package:scoring_app/main.dart';
import 'package:scoring_app/pages/homepage.dart';
import 'package:scoring_app/pages/screens/introductionscreens/introduction.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/loadingIndicator.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/logoAnimated.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/tagline.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late StreamSubscription<ConnectivityResult> subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkconnections();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      checkconnections();
    });
  }

  checkconnections() async {
    // TODO: implement checkconnections

    var connectivityResults = await Connectivity().checkConnectivity();
    await Future.delayed(const Duration(seconds: 3));
    if (connectivityResults == ConnectivityResult.none) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        dismissDirection: DismissDirection.down,
        content: AwesomeSnackbarContent(
          title: 'No internet connection',
          message: 'Connect to a network first',
          contentType: ContentType.warning,
        ),
      ));
    } else {
      Get.to(() => initscreen == 0 || initscreen == null
          ? const IntroductionScreen()
          : Homepage());
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoAnimated(),
                LoadingIndicator(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2),
              ],
            ),
            const Tagline()
          ],
        ),
      ),
    );
  }
}
