import 'dart:convert';

import 'package:kantin_online/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  // for emulator
  // String baseUrl = 'http://10.0.2.2:8000/api';

  // for real device
  String baseUrl = 'http://192.168.43.75:8000/api';

  // for local
  // String baseUrl = 'http://127.0.0.1:8000/api';

  // NOTE: Register
  Future<UserModel> register({
    required String name,
    required String username,
    required String phoneNumber,
    required String email,
    required String password,
  }) async {
    var url = '$baseUrl/register';
    var header = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'phone_number': phoneNumber,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: header,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  // NOTE: LOGIN
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
