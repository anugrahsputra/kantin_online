import 'package:flutter/material.dart';
import 'package:kantin_online/models/user_model.dart';

import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  // NOTE: REGISTER
  Future<bool> register({
    required String name,
    required String email,
    required String username,
    required String phoneNumber,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  // NOTE: LOGIN
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
