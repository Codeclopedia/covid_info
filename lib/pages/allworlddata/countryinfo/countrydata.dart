import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/loadingIndicator.dart';

import '../../../services/apicall.dart';

class Countrydata extends StatelessWidget {
  final String isocode;
  Countrydata({super.key, required this.isocode});
  API apidata = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apidata.getstatesdata(isocode),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
                child: SafeArea(
                    child: ListView(
              shrinkWrap: true,
              children: [Text(snapshot.data.toString())],
            )));
          }

          return const Center(child: CircularProgressIndicator.adaptive());
        },
      ),
    );
  }
}
