import 'package:groceries/module/profile/models/id_model.dart';
import 'package:groceries/module/profile/models/location_model.dart';
import 'package:groceries/module/profile/models/name_model.dart';
import 'package:groceries/module/profile/models/picture_model.dart';
import 'package:groceries/module/profile/models/street_model.dart';

class ProfileModel {
  String? email;
  String? gender;
  String? phone;
  NameModel? name;
  LocationModel? location;
  IDModel? id;
  PictureModel? picture;

  ProfileModel({
    this.name,
    this.location,
    this.email,
    this.id,
    this.phone,
    this.gender,
    this.picture,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      email: json['email'],
      gender: json['gender'],
      phone: json['phone'],
      name: json['name'] != null ? NameModel.fromJson(json['name']) : null,
      location: json['location'] != null ? LocationModel.fromJson(json['location']) : null,
      id: json['id'] != null ? IDModel.fromJson(json['id']) : null,
      picture: json['picture'] != null ? PictureModel.fromJson(json['picture']) : null,
    );
  }
}
