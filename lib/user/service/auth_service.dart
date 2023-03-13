import 'dart:async';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:localstorage/localstorage.dart';

class Auth {
  final String email;
  final String password;

  Auth({required this.email, required this.password});

  static Future<bool> checkLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    LocalStorage storage = LocalStorage("auth.json");
    await storage.ready;
    return storage.getItem("logged") == true;
  }

  Future<bool> login() async {
    var url = Uri.http("192.168.8.88:8084", "/students",
        {"email": email, "password": password});
    final storage = LocalStorage("auth.json");
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var users = convert.jsonDecode(res.body);
      if (users.isEmpty) return false;
      await Future.delayed(const Duration(seconds: 2));
      await storage.ready;
      storage.setItem("logged", true);
      return true;
    }
    return false;
  }
}

class User {
  int id;
  String name;
  String email;
  String password;
  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.password});
}
