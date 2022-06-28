import 'package:groceries/module/profile/models/street_model.dart';

class LocationModel {
  StreetModel? street;
  String? city;
  String? country;
  String? state;
  int? postcode;

  LocationModel({this.street, this.city, this.country, this.state, this.postcode});

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      city: json['city'],
      country: json['country'],
      postcode: json['postcode'],
      state: json['state'],
      street: json['street'] != null ? StreetModel.fromJson(json['street']) : null,
    );
  }
}
