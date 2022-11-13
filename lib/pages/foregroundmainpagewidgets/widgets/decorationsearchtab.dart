import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/allworlddata/allworlddata.dart';
import 'package:spring/spring.dart';

class ForegroundSearchtab extends StatelessWidget {
  ForegroundSearchtab({super.key});
  FocusNode searchbarfocusnode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              final FocusScopeNode currentScope = FocusScope.of(context);
              if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
                FocusManager.instance.primaryFocus!.unfocus();
              }
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
    );
  }
}
