class NameModel {
  String? title;
  String? first;
  String? last;

  NameModel({this.first, this.last, this.title});

  factory NameModel.fromJson(Map<String, dynamic> json) {
    return NameModel(
      first: json['first'],
      last: json['last'],
      title: json['title'],
    );
  }
}
