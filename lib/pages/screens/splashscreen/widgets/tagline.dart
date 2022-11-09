import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class Tagline extends StatefulWidget {
  const Tagline({super.key});

  @override
  State<Tagline> createState() => _TaglineState();
}

class _TaglineState extends State<Tagline> {
  bool showtagline = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    waitingtime();
  }

  waitingtime() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      showtagline = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showtagline
        ? Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,
            child: Spring.fadeIn(
                child: const Text("Your all covid related info in one place.")))
        : Container();
  }
}
