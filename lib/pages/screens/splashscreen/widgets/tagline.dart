import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class Tagline extends StatefulWidget {
  const Tagline({super.key});

  @override
  State<Tagline> createState() => _TaglineState();
}

class _TaglineState extends State<Tagline> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.of(context).size.height * 0.02,
        child: Spring.fadeIn(
            delay: Duration(seconds: 3),
            child: const Text("Your all covid related info in one place.")));
  }
}
