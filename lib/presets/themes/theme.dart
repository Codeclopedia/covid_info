// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themes extends GetxController {
  Rx<ThemeData> darktheme = ThemeData(
          backgroundColor: Color.fromARGB(248, 24, 16, 39),
          scaffoldBackgroundColor: Color.fromARGB(248, 24, 16, 39),
          colorScheme: const ColorScheme.dark(),
          accentColor: Colors.white,
          primaryColor: Color.fromARGB(248, 24, 16, 39),
          indicatorColor: Color.fromARGB(255, 255, 255, 255),
          iconTheme: IconThemeData(color: Color.fromARGB(255, 185, 45, 3)),
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Color.fromARGB(255, 185, 45, 3))))
      .obs;
  Rx<ThemeData> lighttheme = ThemeData(
          backgroundColor: Color.fromARGB(250, 255, 255, 255),
          scaffoldBackgroundColor: Color.fromARGB(250, 255, 255, 255),
          colorScheme: const ColorScheme.light(),
          indicatorColor: Colors.pink,
          primaryColor: Color.fromARGB(255, 255, 255, 255),
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 101, 30)),
          appBarTheme: AppBarTheme(
              iconTheme:
                  IconThemeData(color: Color.fromARGB(255, 255, 101, 30))))
      .obs;
  Rx<ThemeMode> currentheme =
      ThemeMode.system.obs; //default theme mode is system

  setthemetolight() {
    //used to change thememode to light
    currentheme = ThemeMode.light.obs;
  }

  setthemetodark() {
    //used to change thememode to dark
    currentheme = ThemeMode.dark.obs;
  }
}
