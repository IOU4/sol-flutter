import 'package:flutter/material.dart';
import 'package:myapp/home/navigation_bar.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hello World!", textDirection: TextDirection.ltr),
      ),
      bottomNavigationBar: AppNavigation(),
    );
  }
}