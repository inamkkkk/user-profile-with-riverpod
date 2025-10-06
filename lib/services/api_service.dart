import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:user_profile_riverpod/models/user.dart';

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<User> fetchUser() async {
    final response = await http.get(Uri.parse('$baseUrl/users/1'));

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load user');
    }
  }
}