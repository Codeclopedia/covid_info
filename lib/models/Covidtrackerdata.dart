// To parse this JSON data, do
//
//     final covidTrackerData = covidTrackerDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<CovidTrackerData> covidTrackerDataFromJson(String str) =>
    List<CovidTrackerData>.from(
        json.decode(str).map((x) => CovidTrackerData.fromJson(x)));

String covidTrackerDataToJson(List<CovidTrackerData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CovidTrackerData {
  CovidTrackerData({
    required this.id,
    required this.rank,
    required this.country,
    required this.continent,
    required this.twoLetterSymbol,
    required this.threeLetterSymbol,
    required this.infectionRisk,
    required this.caseFatalityRate,
    required this.testPercentage,
    required this.recoveryProporation,
    required this.totalCases,
    required this.newCases,
    required this.totalDeaths,
    required this.newDeaths,
    required this.totalRecovered,
    required this.newRecovered,
    required this.activeCases,
    required this.totalTests,
    required this.population,
    required this.oneCaseeveryXPpl,
    required this.oneDeatheveryXPpl,
    required this.oneTesteveryXPpl,
    required this.deaths1MPop,
    required this.seriousCritical,
    required this.tests1MPop,
    required this.totCases1MPop,
  });

  final String id;
  final int rank;
  final String country;
  final Continent? continent;
  final String twoLetterSymbol;
  final String threeLetterSymbol;
  final double infectionRisk;
  final double caseFatalityRate;
  final double testPercentage;
  final double recoveryProporation;
  final int totalCases;
  final int newCases;
  final int totalDeaths;
  final int newDeaths;
  final String totalRecovered;
  final int newRecovered;
  final int activeCases;
  final String totalTests;
  final String population;
  final int oneCaseeveryXPpl;
  final int oneDeatheveryXPpl;
  final int oneTesteveryXPpl;
  final double deaths1MPop;
  final int seriousCritical;
  final int tests1MPop;
  final double totCases1MPop;

  factory CovidTrackerData.fromJson(Map<String, dynamic> json) =>
      CovidTrackerData(
        id: json["id"],
        rank: json["rank"],
        country: json["Country"],
        continent: continentValues.map[json["Continent"]],
        twoLetterSymbol:
            json["TwoLetterSymbol"] == null ? null : json["TwoLetterSymbol"],
        threeLetterSymbol: json["ThreeLetterSymbol"] == null
            ? null
            : json["ThreeLetterSymbol"],
        infectionRisk: json["Infection_Risk"].toDouble(),
        caseFatalityRate: json["Case_Fatality_Rate"].toDouble(),
        testPercentage: json["Test_Percentage"].toDouble(),
        recoveryProporation: json["Recovery_Proporation"].toDouble(),
        totalCases: json["TotalCases"],
        newCases: json["NewCases"],
        totalDeaths: json["TotalDeaths"],
        newDeaths: json["NewDeaths"],
        totalRecovered: json["TotalRecovered"],
        newRecovered: json["NewRecovered"],
        activeCases: json["ActiveCases"],
        totalTests: json["TotalTests"],
        population: json["Population"],
        oneCaseeveryXPpl: json["one_Caseevery_X_ppl"],
        oneDeatheveryXPpl: json["one_Deathevery_X_ppl"],
        oneTesteveryXPpl: json["one_Testevery_X_ppl"],
        deaths1MPop: json["Deaths_1M_pop"].toDouble(),
        seriousCritical: json["Serious_Critical"],
        tests1MPop: json["Tests_1M_Pop"],
        totCases1MPop: json["TotCases_1M_Pop"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "Country": country,
        "Continent": continentValues.reverse[continent],
        "TwoLetterSymbol": twoLetterSymbol == null ? null : twoLetterSymbol,
        "ThreeLetterSymbol":
            threeLetterSymbol == null ? null : threeLetterSymbol,
        "Infection_Risk": infectionRisk,
        "Case_Fatality_Rate": caseFatalityRate,
        "Test_Percentage": testPercentage,
        "Recovery_Proporation": recoveryProporation,
        "TotalCases": totalCases,
        "NewCases": newCases,
        "TotalDeaths": totalDeaths,
        "NewDeaths": newDeaths,
        "TotalRecovered": totalRecovered,
        "NewRecovered": newRecovered,
        "ActiveCases": activeCases,
        "TotalTests": totalTests,
        "Population": population,
        "one_Caseevery_X_ppl": oneCaseeveryXPpl,
        "one_Deathevery_X_ppl": oneDeatheveryXPpl,
        "one_Testevery_X_ppl": oneTesteveryXPpl,
        "Deaths_1M_pop": deaths1MPop,
        "Serious_Critical": seriousCritical,
        "Tests_1M_Pop": tests1MPop,
        "TotCases_1M_Pop": totCases1MPop,
      };
}

enum Continent {
  ALL,
  NORTH_AMERICA,
  ASIA,
  EUROPE,
  SOUTH_AMERICA,
  AUSTRALIA_OCEANIA,
  AFRICA,
  EMPTY
}

final continentValues = EnumValues({
  "Africa": Continent.AFRICA,
  "All": Continent.ALL,
  "Asia": Continent.ASIA,
  "Australia/Oceania": Continent.AUSTRALIA_OCEANIA,
  "": Continent.EMPTY,
  "Europe": Continent.EUROPE,
  "North America": Continent.NORTH_AMERICA,
  "South America": Continent.SOUTH_AMERICA
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
