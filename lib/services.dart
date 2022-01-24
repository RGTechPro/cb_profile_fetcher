import 'dart:convert';
import 'profile_model.dart';
import 'package:http/http.dart' as http;

Future<Profile> fetchProfile(String? username) async {
  final response = await http
      .get(Uri.parse('https://py.crewbella.com/user/api/profile/$username'));
  print(response.statusCode);

  if (response.statusCode == 200) {
  
    return Profile.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load /User not found');
  }
}
