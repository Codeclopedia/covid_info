// To parse this JSON data, do
//
//     final stateData = stateDataFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

StateData stateDataFromJson(String str) => StateData.fromJson(json.decode(str));

String stateDataToJson(StateData data) => json.encode(data.toJson());

class StateData {
  StateData({
    required this.keyValues,
    required this.totalValues,
    required this.stateWise,
  });

  final dynamic keyValues;
  final TotalValues totalValues;
  final StateWise stateWise;

  factory StateData.fromJson(Map<String, dynamic> json) => StateData(
        keyValues: json["key_values"],
        totalValues: TotalValues.fromJson(json["total_values"]),
        stateWise: StateWise.fromJson(json["state_wise"]),
      );

  Map<String, dynamic> toJson() => {
        "key_values": keyValues,
        "total_values": totalValues.toJson(),
        "state_wise": stateWise.toJson(),
      };
}

class StateWise {
  StateWise({
    required this.maharashtra,
    required this.kerala,
    required this.karnataka,
    required this.tamilNadu,
    required this.andhraPradesh,
    required this.uttarPradesh,
    required this.westBengal,
    required this.delhi,
    required this.chhattisgarh,
    required this.odisha,
    required this.rajasthan,
    required this.gujarat,
    required this.madhyaPradesh,
    required this.haryana,
    required this.bihar,
    required this.telangana,
    required this.punjab,
    required this.assam,
    required this.jharkhand,
    required this.uttarakhand,
    required this.jammuAndKashmir,
    required this.himachalPradesh,
    required this.goa,
    required this.puducherry,
    required this.manipur,
    required this.tripura,
    required this.meghalaya,
    required this.chandigarh,
    required this.arunachalPradesh,
    required this.mizoram,
    required this.nagaland,
    required this.sikkim,
    required this.ladakh,
    required this.dadraAndNagarHaveliAndDamanAndDiu,
    required this.lakshadweep,
    required this.andamanAndNicobarIslands,
    required this.stateUnassigned,
  });

  final AndhraPradesh maharashtra;
  final AndhraPradesh kerala;
  final AndhraPradesh karnataka;
  final AndhraPradesh tamilNadu;
  final AndhraPradesh andhraPradesh;
  final AndhraPradesh uttarPradesh;
  final AndhraPradesh westBengal;
  final AndhraPradesh delhi;
  final AndhraPradesh chhattisgarh;
  final AndhraPradesh odisha;
  final AndhraPradesh rajasthan;
  final AndhraPradesh gujarat;
  final AndhraPradesh madhyaPradesh;
  final AndhraPradesh haryana;
  final AndhraPradesh bihar;
  final AndhraPradesh telangana;
  final AndhraPradesh punjab;
  final AndhraPradesh assam;
  final AndhraPradesh jharkhand;
  final AndhraPradesh uttarakhand;
  final AndhraPradesh jammuAndKashmir;
  final AndhraPradesh himachalPradesh;
  final Goa goa;
  final Puducherry puducherry;
  final AndhraPradesh manipur;
  final Tripura tripura;
  final AndhraPradesh meghalaya;
  final Chandigarh chandigarh;
  final AndhraPradesh arunachalPradesh;
  final AndhraPradesh mizoram;
  final AndhraPradesh nagaland;
  final Sikkim sikkim;
  final Ladakh ladakh;
  final DadraAndNagarHaveliAndDamanAndDiu dadraAndNagarHaveliAndDamanAndDiu;
  final Lakshadweep lakshadweep;
  final TotalValues andamanAndNicobarIslands;
  final StateUnassigned stateUnassigned;

  factory StateWise.fromJson(Map<String, dynamic> json) => StateWise(
        maharashtra: AndhraPradesh.fromJson(json["Maharashtra"]),
        kerala: AndhraPradesh.fromJson(json["Kerala"]),
        karnataka: AndhraPradesh.fromJson(json["Karnataka"]),
        tamilNadu: AndhraPradesh.fromJson(json["Tamil Nadu"]),
        andhraPradesh: AndhraPradesh.fromJson(json["Andhra Pradesh"]),
        uttarPradesh: AndhraPradesh.fromJson(json["Uttar Pradesh"]),
        westBengal: AndhraPradesh.fromJson(json["West Bengal"]),
        delhi: AndhraPradesh.fromJson(json["Delhi"]),
        chhattisgarh: AndhraPradesh.fromJson(json["Chhattisgarh"]),
        odisha: AndhraPradesh.fromJson(json["Odisha"]),
        rajasthan: AndhraPradesh.fromJson(json["Rajasthan"]),
        gujarat: AndhraPradesh.fromJson(json["Gujarat"]),
        madhyaPradesh: AndhraPradesh.fromJson(json["Madhya Pradesh"]),
        haryana: AndhraPradesh.fromJson(json["Haryana"]),
        bihar: AndhraPradesh.fromJson(json["Bihar"]),
        telangana: AndhraPradesh.fromJson(json["Telangana"]),
        punjab: AndhraPradesh.fromJson(json["Punjab"]),
        assam: AndhraPradesh.fromJson(json["Assam"]),
        jharkhand: AndhraPradesh.fromJson(json["Jharkhand"]),
        uttarakhand: AndhraPradesh.fromJson(json["Uttarakhand"]),
        jammuAndKashmir: AndhraPradesh.fromJson(json["Jammu and Kashmir"]),
        himachalPradesh: AndhraPradesh.fromJson(json["Himachal Pradesh"]),
        goa: Goa.fromJson(json["Goa"]),
        puducherry: Puducherry.fromJson(json["Puducherry"]),
        manipur: AndhraPradesh.fromJson(json["Manipur"]),
        tripura: Tripura.fromJson(json["Tripura"]),
        meghalaya: AndhraPradesh.fromJson(json["Meghalaya"]),
        chandigarh: Chandigarh.fromJson(json["Chandigarh"]),
        arunachalPradesh: AndhraPradesh.fromJson(json["Arunachal Pradesh"]),
        mizoram: AndhraPradesh.fromJson(json["Mizoram"]),
        nagaland: AndhraPradesh.fromJson(json["Nagaland"]),
        sikkim: Sikkim.fromJson(json["Sikkim"]),
        ladakh: Ladakh.fromJson(json["Ladakh"]),
        dadraAndNagarHaveliAndDamanAndDiu:
            DadraAndNagarHaveliAndDamanAndDiu.fromJson(
                json["Dadra and Nagar Haveli and Daman and Diu"]),
        lakshadweep: Lakshadweep.fromJson(json["Lakshadweep"]),
        andamanAndNicobarIslands:
            TotalValues.fromJson(json["Andaman and Nicobar Islands"]),
        stateUnassigned: StateUnassigned.fromJson(json["State Unassigned"]),
      );

  Map<String, dynamic> toJson() => {
        "Maharashtra": maharashtra.toJson(),
        "Kerala": kerala.toJson(),
        "Karnataka": karnataka.toJson(),
        "Tamil Nadu": tamilNadu.toJson(),
        "Andhra Pradesh": andhraPradesh.toJson(),
        "Uttar Pradesh": uttarPradesh.toJson(),
        "West Bengal": westBengal.toJson(),
        "Delhi": delhi.toJson(),
        "Chhattisgarh": chhattisgarh.toJson(),
        "Odisha": odisha.toJson(),
        "Rajasthan": rajasthan.toJson(),
        "Gujarat": gujarat.toJson(),
        "Madhya Pradesh": madhyaPradesh.toJson(),
        "Haryana": haryana.toJson(),
        "Bihar": bihar.toJson(),
        "Telangana": telangana.toJson(),
        "Punjab": punjab.toJson(),
        "Assam": assam.toJson(),
        "Jharkhand": jharkhand.toJson(),
        "Uttarakhand": uttarakhand.toJson(),
        "Jammu and Kashmir": jammuAndKashmir.toJson(),
        "Himachal Pradesh": himachalPradesh.toJson(),
        "Goa": goa.toJson(),
        "Puducherry": puducherry.toJson(),
        "Manipur": manipur.toJson(),
        "Tripura": tripura.toJson(),
        "Meghalaya": meghalaya.toJson(),
        "Chandigarh": chandigarh.toJson(),
        "Arunachal Pradesh": arunachalPradesh.toJson(),
        "Mizoram": mizoram.toJson(),
        "Nagaland": nagaland.toJson(),
        "Sikkim": sikkim.toJson(),
        "Ladakh": ladakh.toJson(),
        "Dadra and Nagar Haveli and Daman and Diu":
            dadraAndNagarHaveliAndDamanAndDiu.toJson(),
        "Lakshadweep": lakshadweep.toJson(),
        "Andaman and Nicobar Islands": andamanAndNicobarIslands.toJson(),
        "State Unassigned": stateUnassigned.toJson(),
      };
}

class TotalValues {
  TotalValues({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final TotalValuesDistrict? district;

  factory TotalValues.fromJson(Map<String, dynamic> json) => TotalValues(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: json["district"] == null
            ? null
            : TotalValuesDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district == null ? null : district?.toJson(),
      };
}

class TotalValuesDistrict {
  TotalValuesDistrict({
    required this.nicobars,
    required this.northAndMiddleAndaman,
    required this.southAndaman,
    required this.unknown,
  });

  final DistrictValue nicobars;
  final DistrictValue northAndMiddleAndaman;
  final DistrictValue southAndaman;
  final DistrictValue unknown;

  factory TotalValuesDistrict.fromJson(Map<String, dynamic> json) =>
      TotalValuesDistrict(
        nicobars: DistrictValue.fromJson(json["Nicobars"]),
        northAndMiddleAndaman:
            DistrictValue.fromJson(json["North and Middle Andaman"]),
        southAndaman: DistrictValue.fromJson(json["South Andaman"]),
        unknown: DistrictValue.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Nicobars": nicobars.toJson(),
        "North and Middle Andaman": northAndMiddleAndaman.toJson(),
        "South Andaman": southAndaman.toJson(),
        "Unknown": unknown.toJson(),
      };
}

class DistrictValue {
  DistrictValue({
    required this.notes,
    required this.active,
    required this.confirmed,
    required this.migratedother,
    required this.deceased,
    required this.recovered,
    required this.delta,
  });

  final String notes;
  final int active;
  final int confirmed;
  final int migratedother;
  final int deceased;
  final int recovered;
  final Delta delta;

  factory DistrictValue.fromJson(Map<String, dynamic> json) => DistrictValue(
        notes: json["notes"],
        active: json["active"],
        confirmed: json["confirmed"],
        migratedother: json["migratedother"],
        deceased: json["deceased"],
        recovered: json["recovered"],
        delta: Delta.fromJson(json["delta"]),
      );

  Map<String, dynamic> toJson() => {
        "notes": notes,
        "active": active,
        "confirmed": confirmed,
        "migratedother": migratedother,
        "deceased": deceased,
        "recovered": recovered,
        "delta": delta.toJson(),
      };
}

class Delta {
  Delta({
    required this.confirmed,
    required this.deceased,
    required this.recovered,
  });

  final int confirmed;
  final int deceased;
  final int recovered;

  factory Delta.fromJson(Map<String, dynamic> json) => Delta(
        confirmed: json["confirmed"],
        deceased: json["deceased"],
        recovered: json["recovered"],
      );

  Map<String, dynamic> toJson() => {
        "confirmed": confirmed,
        "deceased": deceased,
        "recovered": recovered,
      };
}

class AndhraPradesh {
  AndhraPradesh({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final Map<String, DistrictValue> district;

  factory AndhraPradesh.fromJson(Map<String, dynamic> json) => AndhraPradesh(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: Map.from(json["district"]).map((k, v) =>
            MapEntry<String, DistrictValue>(k, DistrictValue.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": Map.from(district)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Chandigarh {
  Chandigarh({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final ChandigarhDistrict district;

  factory Chandigarh.fromJson(Map<String, dynamic> json) => Chandigarh(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: ChandigarhDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class ChandigarhDistrict {
  ChandigarhDistrict({
    required this.chandigarh,
  });

  final DistrictValue chandigarh;

  factory ChandigarhDistrict.fromJson(Map<String, dynamic> json) =>
      ChandigarhDistrict(
        chandigarh: DistrictValue.fromJson(json["Chandigarh"]),
      );

  Map<String, dynamic> toJson() => {
        "Chandigarh": chandigarh.toJson(),
      };
}

class DadraAndNagarHaveliAndDamanAndDiu {
  DadraAndNagarHaveliAndDamanAndDiu({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final DadraAndNagarHaveliAndDamanAndDiuDistrict district;

  factory DadraAndNagarHaveliAndDamanAndDiu.fromJson(
          Map<String, dynamic> json) =>
      DadraAndNagarHaveliAndDamanAndDiu(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: DadraAndNagarHaveliAndDamanAndDiuDistrict.fromJson(
            json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class DadraAndNagarHaveliAndDamanAndDiuDistrict {
  DadraAndNagarHaveliAndDamanAndDiuDistrict({
    required this.otherState,
    required this.dadraAndNagarHaveli,
    required this.daman,
    required this.diu,
  });

  final DistrictValue otherState;
  final DistrictValue dadraAndNagarHaveli;
  final DistrictValue daman;
  final DistrictValue diu;

  factory DadraAndNagarHaveliAndDamanAndDiuDistrict.fromJson(
          Map<String, dynamic> json) =>
      DadraAndNagarHaveliAndDamanAndDiuDistrict(
        otherState: DistrictValue.fromJson(json["Other State"]),
        dadraAndNagarHaveli:
            DistrictValue.fromJson(json["Dadra and Nagar Haveli"]),
        daman: DistrictValue.fromJson(json["Daman"]),
        diu: DistrictValue.fromJson(json["Diu"]),
      );

  Map<String, dynamic> toJson() => {
        "Other State": otherState.toJson(),
        "Dadra and Nagar Haveli": dadraAndNagarHaveli.toJson(),
        "Daman": daman.toJson(),
        "Diu": diu.toJson(),
      };
}

class Goa {
  Goa({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final GoaDistrict district;

  factory Goa.fromJson(Map<String, dynamic> json) => Goa(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: GoaDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class GoaDistrict {
  GoaDistrict({
    required this.otherState,
    required this.northGoa,
    required this.southGoa,
    required this.unknown,
  });

  final DistrictValue otherState;
  final DistrictValue northGoa;
  final DistrictValue southGoa;
  final DistrictValue unknown;

  factory GoaDistrict.fromJson(Map<String, dynamic> json) => GoaDistrict(
        otherState: DistrictValue.fromJson(json["Other State"]),
        northGoa: DistrictValue.fromJson(json["North Goa"]),
        southGoa: DistrictValue.fromJson(json["South Goa"]),
        unknown: DistrictValue.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Other State": otherState.toJson(),
        "North Goa": northGoa.toJson(),
        "South Goa": southGoa.toJson(),
        "Unknown": unknown.toJson(),
      };
}

class Ladakh {
  Ladakh({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final LadakhDistrict district;

  factory Ladakh.fromJson(Map<String, dynamic> json) => Ladakh(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: LadakhDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class LadakhDistrict {
  LadakhDistrict({
    required this.kargil,
    required this.leh,
  });

  final DistrictValue kargil;
  final DistrictValue leh;

  factory LadakhDistrict.fromJson(Map<String, dynamic> json) => LadakhDistrict(
        kargil: DistrictValue.fromJson(json["Kargil"]),
        leh: DistrictValue.fromJson(json["Leh"]),
      );

  Map<String, dynamic> toJson() => {
        "Kargil": kargil.toJson(),
        "Leh": leh.toJson(),
      };
}

class Lakshadweep {
  Lakshadweep({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final LakshadweepDistrict district;

  factory Lakshadweep.fromJson(Map<String, dynamic> json) => Lakshadweep(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: LakshadweepDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class LakshadweepDistrict {
  LakshadweepDistrict({
    required this.lakshadweep,
    required this.unknown,
  });

  final DistrictValue lakshadweep;
  final DistrictValue unknown;

  factory LakshadweepDistrict.fromJson(Map<String, dynamic> json) =>
      LakshadweepDistrict(
        lakshadweep: DistrictValue.fromJson(json["Lakshadweep"]),
        unknown: DistrictValue.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "Lakshadweep": lakshadweep.toJson(),
        "Unknown": unknown.toJson(),
      };
}

class Puducherry {
  Puducherry({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final PuducherryDistrict district;

  factory Puducherry.fromJson(Map<String, dynamic> json) => Puducherry(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: PuducherryDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class PuducherryDistrict {
  PuducherryDistrict({
    required this.karaikal,
    required this.mahe,
    required this.puducherry,
    required this.yanam,
  });

  final DistrictValue karaikal;
  final DistrictValue mahe;
  final DistrictValue puducherry;
  final DistrictValue yanam;

  factory PuducherryDistrict.fromJson(Map<String, dynamic> json) =>
      PuducherryDistrict(
        karaikal: DistrictValue.fromJson(json["Karaikal"]),
        mahe: DistrictValue.fromJson(json["Mahe"]),
        puducherry: DistrictValue.fromJson(json["Puducherry"]),
        yanam: DistrictValue.fromJson(json["Yanam"]),
      );

  Map<String, dynamic> toJson() => {
        "Karaikal": karaikal.toJson(),
        "Mahe": mahe.toJson(),
        "Puducherry": puducherry.toJson(),
        "Yanam": yanam.toJson(),
      };
}

class Sikkim {
  Sikkim({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final SikkimDistrict district;

  factory Sikkim.fromJson(Map<String, dynamic> json) => Sikkim(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: SikkimDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class SikkimDistrict {
  SikkimDistrict({
    required this.eastSikkim,
    required this.northSikkim,
    required this.southSikkim,
    required this.westSikkim,
    required this.unknown,
  });

  final DistrictValue eastSikkim;
  final DistrictValue northSikkim;
  final DistrictValue southSikkim;
  final DistrictValue westSikkim;
  final DistrictValue unknown;

  factory SikkimDistrict.fromJson(Map<String, dynamic> json) => SikkimDistrict(
        eastSikkim: DistrictValue.fromJson(json["East Sikkim"]),
        northSikkim: DistrictValue.fromJson(json["North Sikkim"]),
        southSikkim: DistrictValue.fromJson(json["South Sikkim"]),
        westSikkim: DistrictValue.fromJson(json["West Sikkim"]),
        unknown: DistrictValue.fromJson(json["Unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "East Sikkim": eastSikkim.toJson(),
        "North Sikkim": northSikkim.toJson(),
        "South Sikkim": southSikkim.toJson(),
        "West Sikkim": westSikkim.toJson(),
        "Unknown": unknown.toJson(),
      };
}

class StateUnassigned {
  StateUnassigned({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final StateUnassignedDistrict district;

  factory StateUnassigned.fromJson(Map<String, dynamic> json) =>
      StateUnassigned(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: StateUnassignedDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class StateUnassignedDistrict {
  StateUnassignedDistrict({
    required this.unassigned,
  });

  final DistrictValue unassigned;

  factory StateUnassignedDistrict.fromJson(Map<String, dynamic> json) =>
      StateUnassignedDistrict(
        unassigned: DistrictValue.fromJson(json["Unassigned"]),
      );

  Map<String, dynamic> toJson() => {
        "Unassigned": unassigned.toJson(),
      };
}

class Tripura {
  Tripura({
    required this.active,
    required this.confirmed,
    required this.deaths,
    required this.deltaconfirmed,
    required this.deltadeaths,
    required this.deltarecovered,
    required this.lastupdatedtime,
    required this.migratedother,
    required this.recovered,
    required this.state,
    required this.statecode,
    required this.statenotes,
    required this.district,
  });

  final String active;
  final String confirmed;
  final String deaths;
  final String deltaconfirmed;
  final String deltadeaths;
  final String deltarecovered;
  final String lastupdatedtime;
  final String migratedother;
  final String recovered;
  final String state;
  final String statecode;
  final String statenotes;
  final TripuraDistrict district;

  factory Tripura.fromJson(Map<String, dynamic> json) => Tripura(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
        district: TripuraDistrict.fromJson(json["district"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
        "district": district.toJson(),
      };
}

class TripuraDistrict {
  TripuraDistrict({
    required this.dhalai,
    required this.gomati,
    required this.khowai,
    required this.northTripura,
    required this.sipahijala,
    required this.southTripura,
    required this.unokoti,
    required this.westTripura,
  });

  final DistrictValue dhalai;
  final DistrictValue gomati;
  final DistrictValue khowai;
  final DistrictValue northTripura;
  final DistrictValue sipahijala;
  final DistrictValue southTripura;
  final DistrictValue unokoti;
  final DistrictValue westTripura;

  factory TripuraDistrict.fromJson(Map<String, dynamic> json) =>
      TripuraDistrict(
        dhalai: DistrictValue.fromJson(json["Dhalai"]),
        gomati: DistrictValue.fromJson(json["Gomati"]),
        khowai: DistrictValue.fromJson(json["Khowai"]),
        northTripura: DistrictValue.fromJson(json["North Tripura"]),
        sipahijala: DistrictValue.fromJson(json["Sipahijala"]),
        southTripura: DistrictValue.fromJson(json["South Tripura"]),
        unokoti: DistrictValue.fromJson(json["Unokoti"]),
        westTripura: DistrictValue.fromJson(json["West Tripura"]),
      );

  Map<String, dynamic> toJson() => {
        "Dhalai": dhalai.toJson(),
        "Gomati": gomati.toJson(),
        "Khowai": khowai.toJson(),
        "North Tripura": northTripura.toJson(),
        "Sipahijala": sipahijala.toJson(),
        "South Tripura": southTripura.toJson(),
        "Unokoti": unokoti.toJson(),
        "West Tripura": westTripura.toJson(),
      };
}
