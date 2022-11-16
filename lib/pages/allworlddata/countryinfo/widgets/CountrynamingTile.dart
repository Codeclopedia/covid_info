import 'package:flutter/material.dart';

class CountryNamingTile extends StatelessWidget {
  final String CountryRank;
  final String CountryName;
  final String Continent;

  const CountryNamingTile(
      {super.key,
      required this.CountryRank,
      required this.CountryName,
      required this.Continent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${CountryRank.toString()}.",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.15,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                CountryName.toString(),
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.15,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
          Text(
            Continent.replaceRange(0, 10, "").toString(),
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
