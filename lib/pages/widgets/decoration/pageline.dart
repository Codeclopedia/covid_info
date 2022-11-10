import 'package:flutter/material.dart';

class Pageline extends StatelessWidget {
  const Pageline({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.horizontal_rule,
      color: Colors.white,
      size: MediaQuery.of(context).size.width * 0.1,
    );
  }
}
