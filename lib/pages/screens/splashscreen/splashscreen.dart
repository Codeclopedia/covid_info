import 'package:flutter/material.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/loadingIndicator.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/logoAnimated.dart';
import 'package:scoring_app/pages/screens/splashscreen/widgets/tagline.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                LogoAnimated(),
                LoadingIndicator(),
              ],
            ),
            const Tagline()
          ],
        ),
      ),
    );
  }
}
