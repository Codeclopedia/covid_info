import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/aboutUs/aboutuspage.dart';
import 'package:scoring_app/pages/foregroundmainpagewidgets/widgets/decorationsearchtab.dart';
import 'package:scoring_app/presets/appdata.dart';

class ForegroundWidget extends StatelessWidget {
  const ForegroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                    // final FocusScopeNode currentScope = FocusScope.of(context);
                    // if (!currentScope.hasPrimaryFocus &&
                    //     currentScope.hasFocus) {
                    //   FocusManager.instance.primaryFocus!.unfocus();
                    // }
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.08,
                  ),
                ),
                Image.asset(
                  applogo,
                  scale: MediaQuery.of(context).size.width * 0.004,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const AboutUs());
                  },
                  child: Icon(
                    Icons.help,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.07,
                  ),
                ),
              ],
            ),
            ForegroundSearchtab()
          ],
        ),
      ),
    );
  }
}
