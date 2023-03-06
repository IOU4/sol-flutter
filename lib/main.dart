import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      title: "demo app",
      home: const AppHome(),
      routes: {
        '/login': (context) => const LoginPage(),
      },
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
    );
  }
}
