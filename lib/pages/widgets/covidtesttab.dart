import 'package:flutter/material.dart';

class CovidTestTab extends StatelessWidget {
  const CovidTestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(69, 187, 165, 214)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset("assets/images/virus-g15389c453_1280.png"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Coronavirus Test",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: Text(
                        "Get to know about the location in your city where covid test are going on. It can help many people who need to know the test location in emergency.",
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.025,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Theme.of(context).indicatorColor,
                size: MediaQuery.of(context).size.width * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
