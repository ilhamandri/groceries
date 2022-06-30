import 'package:groceries/module/profile/models/profile_model.dart';

class ProfileResponse {
  List<ProfileModel>? result;

  ProfileResponse({this.result});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;

    List<ProfileModel>? res;
    if (json['results'] != null) {
      res = list.map((i) => ProfileModel.fromJson(i)).toList();
    }

    return ProfileResponse(
      result: list.isEmpty ? null : res,
    );
  }
}
