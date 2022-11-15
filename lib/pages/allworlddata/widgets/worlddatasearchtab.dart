import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/services/datasearch.dart';

class WorlddataSearchTab extends StatefulWidget {
  WorlddataSearchTab({super.key});

  @override
  State<WorlddataSearchTab> createState() => _WorlddataSearchTabState();
}

class _WorlddataSearchTabState extends State<WorlddataSearchTab> {
  DataSearchController searchController = Get.find();

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
        child: TextField(
          onChanged: (value) {

            searchController.search = value.obs;
          },
          decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: "Search"),
        ),
      ),
    );
  }
}
