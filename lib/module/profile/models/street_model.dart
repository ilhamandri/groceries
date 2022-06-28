class StreetModel {
  int? number;
  String? name;

  StreetModel({this.number, this.name});

  factory StreetModel.fromJson(Map<String, dynamic> json) {
    return StreetModel(
      name: json['name'],
      number: json['number'],
    );
  }
}
