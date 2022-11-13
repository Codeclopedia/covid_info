import 'package:flutter/material.dart';
import 'package:scoring_app/pages/widgets/covidnews/covidnews.dart';
import 'package:scoring_app/pages/widgets/covidtesttab.dart';
import 'package:scoring_app/pages/widgets/covidtotalstats/covidMapAndStats.dart';
import 'package:scoring_app/pages/widgets/decoration/pageline.dart';
import 'package:scoring_app/pages/widgets/facilities.dart';
import 'package:scoring_app/pages/widgets/trainingvideos.dart';

import '../foregroundmainpagewidgets/foregroundwidget.dart';

class ForegroundMainScreen extends StatelessWidget {
  const ForegroundMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        const ForegroundWidget(),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const Pageline(),
              const CovidTestTab(),
              const Facilities(),
              TrainingVideos(),
              const CovidMapAndStats(),
              CovidNews()
            ],
          ),
        ),
      ],
    );
  }
}
