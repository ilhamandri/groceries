class PictureModel {
  String? large;
  String? medium;
  String? thumbnail;

  PictureModel({this.large, this.medium, this.thumbnail});

  factory PictureModel.fromJson(Map<String, dynamic> json) {
    return PictureModel(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}
