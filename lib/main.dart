import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/screens/introductionscreens/introduction.dart';
import 'package:scoring_app/presets/themes/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  Themes themes = Get.put(Themes());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: 'Flutter Demo',
          theme: themes.lighttheme.value,
          darkTheme: themes.darktheme.value,
          themeMode: themes.currentheme.value,
          home: const IntroductionScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
