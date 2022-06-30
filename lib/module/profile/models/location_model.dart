import 'package:groceries/module/profile/models/street_model.dart';

class LocationModel {
  StreetModel? street;
  String? city;
  String? country;
  String? state;

  LocationModel({
    this.street,
    this.city,
    this.country,
    this.state,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      city: json['city'],
      country: json['country'],
      state: json['state'],
      street: json['street'] != null ? StreetModel.fromJson(json['street']) : null,
    );
  }
}
