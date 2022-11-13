import 'package:flutter/material.dart';
import 'package:scoring_app/pages/backgroundmainscreen/background.dart';
import 'package:scoring_app/pages/foregroundmainscreen/foregroundmainscreen.dart';
import 'package:scoring_app/pages/widgets/customdrawer/customdrawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        drawer: CustomDrawer(),
        body: Stack(
          children: const [
            BackgroundScreen(),
            ForegroundMainScreen(),
          ],
        ));
  }
}
