import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:scoring_app/models/Covidtrackerdata.dart';
import 'package:scoring_app/models/allnewsmodel.dart';
import 'package:scoring_app/models/statedatamodel.dart';
import 'package:scoring_app/models/worlddata.dart';
import 'package:scoring_app/pages/widgets/covidtesttab.dart';
import 'package:shared_preferences/shared_preferences.dart';

class API extends GetxController {
  final rapidApiKey = '22f2055391msh6b57eefdefddafbp11c465jsn500c21a9cc64';
  RxList<WorldData> worlddata = <WorldData>[].obs;
  RxList<News> allnewsdata = <News>[].obs;
  RxList<CovidTrackerData> Covidtrackerdata = <CovidTrackerData>[].obs;
  RxList<Statedata> statedata = <Statedata>[].obs;

  Future<SharedPreferences> get sharedPreferencesinstance async =>
      await SharedPreferences.getInstance();

  worlddataApiCall() async {
    SharedPreferences sharedPreferences = await sharedPreferencesinstance;
    try {
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
      sharedPreferences.remove("worldData");

      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        worlddata = worldDataFromJson(data).obs;
        List<String> listdata = [];
        worlddata.forEach((element) {
          listdata.add(json.encode(element));
        });
        sharedPreferences.setStringList("worldData", listdata);
      } else {
        print(response.reasonPhrase);
      }
    } catch (error) {
      var Listofdata = sharedPreferences.getStringList("worldData");
      Listofdata?.forEach((element) {
        worlddata.add(jsonDecode(element));
      });
    }
  }

  covidtrackerdatacall() async {
    SharedPreferences sharedPreferences = await sharedPreferencesinstance;
    try {
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
      sharedPreferences.remove("CovidtrackerData");

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        List<String> listofdata = [];
        Covidtrackerdata = covidTrackerDataFromJson(data).obs;
        Covidtrackerdata.forEach((element) {
          listofdata.add(jsonEncode(element));
        });
        sharedPreferences.setStringList("CovidtrackerData", listofdata);
      } else {
        print(response.reasonPhrase);
      }
    } catch (error) {
      var Listofdata = sharedPreferences.getStringList("CovidtrackerData");
      Listofdata?.forEach((element) {
        Covidtrackerdata.add(jsonDecode(element));
      });
    }
  }

  latestNewsDataCall() async {
    SharedPreferences sharedPreferences = await sharedPreferencesinstance;
    try {
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
      sharedPreferences.remove("allnewsData");

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        List<String> listofdata = [];
        allnewsdata = allnewsFromJson(data).news.obs;
        allnewsdata.forEach((element) {
          listofdata.add(jsonEncode(element));
        });
        sharedPreferences.setStringList("allnewsData", listofdata);
      } else {
        print(response.reasonPhrase);
      }
    } catch (error) {
      var Listofdata = sharedPreferences.getStringList("allnewsData");
      Listofdata?.forEach((element) {
        allnewsdata.add(jsonDecode(element));
      });
    }
  }

  getstatesdata(String IsoCode) async {
    SharedPreferences sharedPreferences = await sharedPreferencesinstance;

    try {
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
      sharedPreferences.remove("statesData");

      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        statedata = statedataFromJson(data).obs;
        List<String> listdata = [];
        statedata.forEach((element) {
          listdata.add(jsonEncode(element));
        });
        sharedPreferences.setStringList("statesData", listdata);
        return statedata;
      } else {
        print(response.reasonPhrase);
      }
    } catch (error) {
      var Listofdata = sharedPreferences.getStringList("statesData");
      Listofdata?.forEach((element) {
        statedata.add(jsonDecode(element));
      });
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
