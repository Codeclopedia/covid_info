import 'package:flutter/material.dart';

class StatsTile extends StatelessWidget {
  final String casetype;
  final String numberofcases;
  final Color casecolor;
  const StatsTile({
    super.key,
    required this.casetype,
    required this.numberofcases,
    required this.casecolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            casetype,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.01),
                child: Text(
                  numberofcases,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width * 0.04,
                decoration: BoxDecoration(
                    color: casecolor, borderRadius: BorderRadius.circular(5)),
              )
            ],
          )
        ],
      ),
    );
  }
}
