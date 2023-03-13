import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

class Auth {
  final String email;
  final String password;

  Auth({required this.email, required this.password});

  static Future<bool> checkLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    LocalStorage storage = LocalStorage("auth.json");
    await storage.ready;
    print("logged: ${storage.getItem("logged")}");
    return storage.getItem("logged") == true;
  }

  Future<bool> login() async {
    print("email $email");
    print("password $password");
    var url = Uri.http("192.168.8.88:8084", "/students",
        {"email": email, "password": password});
    final storage = LocalStorage("auth.json");
    var res = await http.get(url);
    if (res.statusCode == 200) {
      await Future.delayed(const Duration(seconds: 2));
      await storage.ready;
      storage.setItem("logged", true);
      return true;
    }
    return false;
  }
}
