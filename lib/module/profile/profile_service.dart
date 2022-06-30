import 'dart:convert';

import 'package:http/http.dart' as http;

class ProfileService {
  fetchUserProfile() async {
    var url = Uri.parse('https://randomuser.me/api');
    http.Response response = await http.get(url);
    var decodeResponse = json.decode(response.body);
    return decodeResponse;
  }
}
