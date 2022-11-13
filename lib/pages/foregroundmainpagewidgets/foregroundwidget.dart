import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/allworlddata/allworlddata.dart';
import 'package:scoring_app/presets/appdata.dart';
import 'package:spring/spring.dart';

class ForegroundWidget extends StatelessWidget {
  const ForegroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode searchbarfocusnode = FocusNode();
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
                    final FocusScopeNode currentScope = FocusScope.of(context);
                    if (!currentScope.hasPrimaryFocus &&
                        currentScope.hasFocus) {
                      FocusManager.instance.primaryFocus!.unfocus();
                    }
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
                Icon(
                  Icons.help,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.07,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: Spring.fadeIn(
                delay: const Duration(milliseconds: 700),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    onTap: () {
                      Get.to(() => Allworlddata());
                    },
                    focusNode: searchbarfocusnode,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "Search your city",
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
