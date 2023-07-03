import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  static Future login(String email, String password) async {
    const String path = 'http://localhost:3000/user/login';
    final body = jsonEncode({
      "email": email,
      "password": password,
    });
    final response = await http.post(
      Uri.parse(path),
      headers: {
        'Content-Type': 'application/json',
      },
      body: body,
    );

    if (response.statusCode == 200) {
      var cookies = response.headers['set-cookie'];
      return cookies;
    }
  }

  static Future signUp(String email, String password, String firstName,
      String lastName, String phoneNumber) async {
    const String path = 'http://localhost:3000/user/login';
    final body = jsonEncode({
      {
        "email": email,
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber
      }
    });
    final response = await http.post(Uri.parse(path),
        headers: {
          'Content-Type': 'application/json',
        },
        body: body);

    if (response.statusCode == 200) {
      var cookies = response.headers['set-cookie'];
      return cookies;
    }
  }
}
