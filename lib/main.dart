import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/user/presentation/sing_in_screen.dart';
import 'package:myapp/user/presentation/sing_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      // darkTheme: ThemeData.dark(),
      title: "demo app",
      home: const AppHome(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
    );
  }
}
