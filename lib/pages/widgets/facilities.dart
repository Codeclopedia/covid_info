import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoring_app/pages/widgets/facilitiesCard/facilitiescard.dart';

class Facilities extends StatelessWidget {
  Facilities({super.key});

  List<Map> facilitiesdata = [
    {
      'Icon': const FaIcon(FontAwesomeIcons.globe),
      'Title': 'World Data',
    },
    {
      'Icon': const FaIcon(FontAwesomeIcons.hospital),
      'Title': 'Test reports',
    },
    {
      'Icon': const Icon(Icons.vaccines_outlined),
      'Title': 'World Data',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25, //
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: facilitiesdata.length,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        itemBuilder: (context, index) {
          return FacilitiesCard(
            icon: facilitiesdata[index]["Icon"],
            title: facilitiesdata[index]["Title"],
          );
        },
      ),
    );
  }
}
