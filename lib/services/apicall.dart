import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:scoring_app/models/Covidtrackerdata.dart';
import 'package:scoring_app/models/allnewsmodel.dart';
import 'package:scoring_app/models/statedatamodel.dart';
import 'package:scoring_app/models/worlddata.dart';
import 'package:scoring_app/pages/widgets/covidtesttab.dart';

class API extends GetxController {
  final rapidApiKey = '22f2055391msh6b57eefdefddafbp11c465jsn500c21a9cc64';
  RxList<WorldData> worlddata = <WorldData>[].obs;
  RxList<News> allnewsdata = <News>[].obs;
  RxList<CovidTrackerData> Covidtrackerdata = <CovidTrackerData>[].obs;
  RxList<Statedata> statedata = <Statedata>[].obs;

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

  covidtrackerdatacall() async {
    var headers = {
      'X-RapidAPI-Key': '22f2055391msh6b57eefdefddafbp11c465jsn500c21a9cc64',
      'X-RapidAPI-Host':
          'vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/npm-covid-data/'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      Covidtrackerdata = covidTrackerDataFromJson(data).obs;
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

  getstatesdata(String IsoCode) async {
    var headers = {
      'X-RapidAPI-Key': '22f2055391msh6b57eefdefddafbp11c465jsn500c21a9cc64',
      'X-RapidAPI-Host':
          'vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com'
    };
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com/api/api-covid-data/reports/$IsoCode'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();
      statedata = statedataFromJson(data).obs;
      return statedata;
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
    covidtrackerdatacall();
  }
}
