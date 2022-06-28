class IDModel {
  String? name;
  String? value;

  IDModel({this.name, this.value});

  factory IDModel.fromJson(Map<String, dynamic> json) {
    return IDModel(
      name: json['name'],
      value: json['value'],
    );
  }
}
