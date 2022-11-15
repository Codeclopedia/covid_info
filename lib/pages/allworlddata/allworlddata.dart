import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/allworlddata/countryinfo/countrydata.dart';
import 'package:scoring_app/pages/allworlddata/widgets/Newstab.dart';
import 'package:scoring_app/pages/allworlddata/widgets/covidHistorytab.dart';
import 'package:scoring_app/pages/allworlddata/widgets/covidtracker.dart';
import 'package:scoring_app/pages/allworlddata/widgets/worlddatasearchtab.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:url_launcher/url_launcher.dart';

class Allworlddata extends StatelessWidget {
  Allworlddata({super.key});
  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
        return true;
      },
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: ListView(
                children: [
                  WorlddataSearchTab(),
                  AllWorldNewsTab(),
                  CovidHistoryTab(),
                  CovidTracker()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
