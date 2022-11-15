import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/Covidtrackerpage/covidtrackerpage.dart';
import 'package:scoring_app/presets/appdata.dart';
import 'package:spring/spring.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final List<Map> draweroptions = [
    {
      "title": "World stats",
      "Icon": Icons.language_outlined,
      "ontap": () {
        Get.to(() => const CovidTrackerPage());
      }
    },
    {"title": "News", "Icon": Icons.newspaper_outlined, "ontap": () {}},
    {"title": "Vaccines", "Icon": Icons.vaccines_outlined, "ontap": () {}},
    {
      "title": "Covid test",
      "Icon": Icons.medication_liquid_outlined,
      "ontap": () {}
    },
    {"title": "About us", "Icon": Icons.group, "ontap": () {}},
    {"title": "Exit", "Icon": Icons.exit_to_app, "ontap": () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Spring.fadeIn(child: Image.asset(applogo)),
              Spring.fadeIn(
                delay: const Duration(milliseconds: 100),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: ListTile(
                        leading: Icon(draweroptions[index]["Icon"]),
                        onTap: draweroptions[index]["ontap"],
                        title: Text(draweroptions[index]["title"]),
                        textColor: Theme.of(context).primaryColor,
                        iconColor: Theme.of(context).primaryColor,
                      ),
                    );
                  },
                  itemCount: draweroptions.length,
                ),
              )
            ],
          ),
          Spring.fadeIn(
            delay: const Duration(milliseconds: 500),
            child: Column(
              children: [
                Text(
                  "Follow us on",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01),
                      child: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01),
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01),
                      child: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
