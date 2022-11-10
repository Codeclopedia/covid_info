import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scoring_app/pages/widgets/facilitiesCard/facilitiescard.dart';

class Facilities extends StatelessWidget {
  const Facilities({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25, //
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04),
        itemBuilder: (context, index) {
          return const FacilitiesCard();
        },
      ),
    );
  }
}
