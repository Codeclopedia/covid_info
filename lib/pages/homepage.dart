import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:scoring_app/pages/backgroundmainscreen/background.dart';
import 'package:scoring_app/pages/foregroundmainscreen/foregroundmainscreen.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/loadingIndicator.dart';
import 'package:scoring_app/pages/widgets/customdrawer/customdrawer.dart';
import 'package:scoring_app/services/apicall.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  API apidata = Get.find();

  bool isdataloaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool checkdata() {
    return apidata.worlddata.isNotEmpty ||
            apidata.latestnewsdata.isNotEmpty ||
            apidata.Covidtrackerdata.isNotEmpty
        ? true
        : false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: CustomDrawer(),
      body: StreamBuilder<bool>(
          stream: Stream.periodic(const Duration(seconds: 3), (_) {
            return checkdata();
          }),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!) {
                return Stack(
                  children: const [
                    BackgroundScreen(),
                    ForegroundMainScreen(),
                  ],
                );
              }
              return LoadingIndicator(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
              );
            }
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: Theme.of(context).backgroundColor,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Lottie.asset("assets/lottie/99274-loading.json")),
            );
          }),
    );
  }
}
