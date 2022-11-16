import 'package:flutter/material.dart';

class CountryDetailedDataTile extends StatelessWidget {
  final String title;
  final String data;

  const CountryDetailedDataTile(
      {super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.005),
        child: RichText(
          text: TextSpan(
            text: "$title : ",
            style: const TextStyle(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: data,
                  style: const TextStyle(fontWeight: FontWeight.normal)),
            ],
          ),
        ));
  }
}
