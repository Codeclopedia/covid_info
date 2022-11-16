import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacilitiesCard extends StatelessWidget {
  final Widget icon;
  final String title;

  const FacilitiesCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.03,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2, //
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
            color: Colors.pink,
            boxShadow: const [
              BoxShadow(
                  blurRadius: 25.0, offset: Offset(1, 1), color: Colors.pink),
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              title.toString(),
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
