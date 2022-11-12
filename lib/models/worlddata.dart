// To parse this JSON data, do
//
//     final worldData = worldDataFromJson(jsonString);

import 'dart:convert';

List<WorldData> worldDataFromJson(String str) =>
    List<WorldData>.from(json.decode(str).map((x) => WorldData.fromJson(x)));

String worldDataToJson(List<WorldData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WorldData {
  WorldData({
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
  final String continent;
  final dynamic twoLetterSymbol;
  final dynamic threeLetterSymbol;
  final int infectionRisk;
  final double caseFatalityRate;
  final int testPercentage;
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
  final int totCases1MPop;

  factory WorldData.fromJson(Map<String, dynamic> json) => WorldData(
        id: json["id"],
        rank: json["rank"],
        country: json["Country"],
        continent: json["Continent"],
        twoLetterSymbol: json["TwoLetterSymbol"],
        threeLetterSymbol: json["ThreeLetterSymbol"],
        infectionRisk: json["Infection_Risk"],
        caseFatalityRate: json["Case_Fatality_Rate"].toDouble(),
        testPercentage: json["Test_Percentage"],
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
        totCases1MPop: json["TotCases_1M_Pop"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rank": rank,
        "Country": country,
        "Continent": continent,
        "TwoLetterSymbol": twoLetterSymbol,
        "ThreeLetterSymbol": threeLetterSymbol,
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
