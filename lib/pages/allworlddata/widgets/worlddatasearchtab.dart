import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WorlddataSearchTab extends StatelessWidget {
  const WorlddataSearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Theme.of(context).primaryColor)),
        child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: "Search"),
        ),
      ),
    );
  }
}
