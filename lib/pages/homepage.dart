import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

  Widget Customloadingscreen() {
    return Scaffold(
      body: Center(
        child: LoadingIndicator(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.2,
        ),
      ),
    );
  }

  bool checkdata() {
    return apidata.worlddata.isNotEmpty ||
            apidata.allnewsdata.isNotEmpty ||
            apidata.Covidtrackerdata.isNotEmpty
        ? true
        : false;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: Stream.periodic(const Duration(seconds: 3), (_) {
          return checkdata();
        }),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!) {
              return Scaffold(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  drawer: CustomDrawer(),
                  body: Stack(
                    children: const [
                      BackgroundScreen(),
                      ForegroundMainScreen(),
                    ],
                  ));
            }
            return Customloadingscreen();
          }
          return Container();
        });
  }
}
