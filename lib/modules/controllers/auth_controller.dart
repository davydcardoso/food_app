import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/shared/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      saveUser(user);
      _user = user;
      Navigator.pushReplacementNamed(
        context,
        '/dashboard',
        arguments: {
          'id': user.id,
          'name': user.name,
          'token': user.token,
          'isAdmin': user.isAdmin,
        },
      );
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setBool('isAdmin', user.isAdmin);
    await instance.setString('token', user.token);
    await instance.setString('name', user.name);
    await instance.setString('id', user.id);
    return;
  }

  Future<void> saveMethodPaymentsUser(dynamic jsonMap) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString('user.payment-method', jsonEncode(jsonMap));
  }

  Future<void> verifyUserSession(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();

    Future.delayed(const Duration(seconds: 2));

    if (instance.containsKey('token')) {
      final isAdmin = instance.get('isAdmin') as bool;
      final token = instance.get('token') as String;
      final name = instance.get('name') as String;
      final id = instance.get('id') as String;

      final user = UserModel(
        id: id,
        token: token,
        name: name,
        isAdmin: isAdmin,
      );

      setUser(context, user);
      return;
    }

    setUser(context, null);
  }

  Future<UserModel> getUserSession() async {
    final instance = await SharedPreferences.getInstance();
    final isAdmin = instance.get('isAdmin') as bool;
    final token = instance.get('token') as String;
    final name = instance.get('name') as String;
    final id = instance.get('id') as String;

    final user = UserModel(
      id: id,
      token: token,
      name: name,
      isAdmin: isAdmin,
    );

    return user;
  }

  Future<void> singOut(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();

    await instance.clear();

    Navigator.pushReplacementNamed(context, '/login');
    return;
  }
}
