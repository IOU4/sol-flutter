import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/user/presentation/sing_in_screen.dart';
import 'package:myapp/user/service/auth_service.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Auth.checkLogin(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.data == true) {
            return const AppHome();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
