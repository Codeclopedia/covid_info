import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/screens/splashscreen/splashscreen.dart';
import 'package:scoring_app/presets/themes/theme.dart';
import 'package:scoring_app/services/apicall.dart';
import 'package:scoring_app/services/datasearch.dart';
import 'package:shared_preferences/shared_preferences.dart';

late int? initscreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initscreen = (preferences.getInt("initscreen"));
  await preferences.setInt("initscreen", 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Themes themes = Get.put(Themes());
  API datacontroller = Get.put(API());
  DataSearchController searchController = Get.put(DataSearchController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: 'Flutter Demo',
          theme: themes.lighttheme.value,
          darkTheme: themes.darktheme.value,
          themeMode: themes.currentheme.value,
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
