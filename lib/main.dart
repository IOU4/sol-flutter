import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/theme.dart';
import 'package:myapp/user/presentation/auth_page.dart';

void main() async {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      // darkTheme: ThemeData.dark(),
      title: "demo app",
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
