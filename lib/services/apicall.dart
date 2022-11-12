import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:scoring_app/models/allnewsmodel.dart';
import 'package:scoring_app/models/worlddata.dart';

class API extends GetxController {
  final rapidApiKey = '22f2055391msh6b57eefdefddafbp11c465jsn500c21a9cc64';
  late RxList<WorldData> worlddata = <WorldData>[].obs;
  late RxList<News> allnewsdata = <News>[].obs;

  worlddataApiCall() async {
    var headers = {
      'X-RapidAPI-Key': rapidApiKey,
      'X-RapidAPI-Host':
          'vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/npm-covid-data/world'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      final data = await response.stream.bytesToString();
      worlddata = worldDataFromJson(data).obs;
    } else {
      print(response.reasonPhrase);
    }
  }

  latestNewsDataCall() async {
    var headers = {
      'X-RapidAPI-Key': rapidApiKey,
      'X-RapidAPI-Host':
          'vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/news/get-coronavirus-news/0'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      allnewsdata = allnewsFromJson(data).news.obs;
    } else {
      print(response.reasonPhrase);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    worlddataApiCall();
    latestNewsDataCall();
  }
}
