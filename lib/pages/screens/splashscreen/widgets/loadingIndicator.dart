import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator({super.key});

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> {
  bool loadingIndicator = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    waitingtime();
  }

  waitingtime() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      loadingIndicator = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widget = loadingIndicator
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.height * 0.04,
                child: Spring.fadeIn(
                    child: Image.asset("assets/lottie/loadingIndicator.gif")),
              ),
            ],
          )
        : const SizedBox();
    return widget;
  }
}
