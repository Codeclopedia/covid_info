import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FacilitiesCard extends StatelessWidget {
  const FacilitiesCard({super.key});

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
          children: const [
            Icon(
              Icons.two_wheeler,
              color: Colors.white,
            ),
            Text(
              "Custom",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
