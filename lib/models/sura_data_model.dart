class SuraDataModel {
  final String suraNameAR;
  final String suraNameEN;
  final int suraNumber;
  final int suraAyatCount;

  SuraDataModel({
    required this.suraNameAR,
    required this.suraNameEN,
    required this.suraNumber,
    required this.suraAyatCount,
  });

  factory SuraDataModel.fromJson(Map<String, dynamic> json) {
    return SuraDataModel(
      suraNameAR: json["suraNameAR"],
      suraNameEN: json["suraNameEN"],
      suraNumber: int.parse(json["suraNumber"]),
      suraAyatCount: int.parse(json["suraAyahCount"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "suraNameAR": suraNameAR,
      "suraNameEN": suraNameEN,
      "suraNumber": suraNumber,
      "suraAyahCount": suraAyatCount,
    };
  }
}
