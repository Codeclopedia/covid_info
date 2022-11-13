// To parse this JSON data, do
//
//     final statedata = statedataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Statedata> statedataFromJson(String str) =>
    List<Statedata>.from(json.decode(str).map((x) => Statedata.fromJson(x)));

String statedataToJson(List<Statedata> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Statedata {
  Statedata({
    required this.name,
    required this.province,
    required this.twoLetterSymbol,
    required this.iso,
    required this.date,
    required this.confirmed,
    required this.recovered,
    required this.deaths,
    required this.caseFatalityRate,
    required this.confirmedDiff,
    required this.deathsDiff,
    required this.recoveredDiff,
    required this.active,
    required this.activeDiff,
    required this.fatalityRate,
    required this.recoveryProporation,
  });

  final Name? name;
  final String province;
  final String twoLetterSymbol;
  final Iso? iso;
  final DateTime date;
  final int confirmed;
  final int recovered;
  final int deaths;
  final double caseFatalityRate;
  final int confirmedDiff;
  final int deathsDiff;
  final int recoveredDiff;
  final int active;
  final int activeDiff;
  final double fatalityRate;
  final double recoveryProporation;

  factory Statedata.fromJson(Map<String, dynamic> json) => Statedata(
        name: nameValues.map[json["name"]],
        province: json["province"],
        twoLetterSymbol:
            json["TwoLetterSymbol"] == null ? null : json["TwoLetterSymbol"],
        iso: isoValues.map[json["iso"]],
        date: DateTime.parse(json["date"]),
        confirmed: json["confirmed"],
        recovered: json["recovered"],
        deaths: json["deaths"],
        caseFatalityRate: json["Case_Fatality_Rate"] == null
            ? null
            : json["Case_Fatality_Rate"].toDouble(),
        confirmedDiff: json["confirmed_diff"],
        deathsDiff: json["deaths_diff"],
        recoveredDiff: json["recovered_diff"],
        active: json["active"],
        activeDiff: json["active_diff"],
        fatalityRate: json["fatality_rate"].toDouble(),
        recoveryProporation: json["Recovery_Proporation"].toDouble() == null
            ? null
            : json["Recovery_Proporation"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "province": province,
        "TwoLetterSymbol": twoLetterSymbol == null ? null : twoLetterSymbol,
        "iso": isoValues.reverse[iso],
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "confirmed": confirmed,
        "recovered": recovered,
        "deaths": deaths,
        "Case_Fatality_Rate":
            caseFatalityRate == null ? null : caseFatalityRate,
        "confirmed_diff": confirmedDiff,
        "deaths_diff": deathsDiff,
        "recovered_diff": recoveredDiff,
        "active": active,
        "active_diff": activeDiff,
        "fatality_rate": fatalityRate,
        "Recovery_Proporation":
            recoveryProporation == null ? null : recoveryProporation,
      };
}

enum Iso { CAN }

final isoValues = EnumValues({"CAN": Iso.CAN});

enum Name { CANADA }

final nameValues = EnumValues({"Canada": Name.CANADA});

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
