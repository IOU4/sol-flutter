import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
          child: Text("Hello World!", textDirection: TextDirection.ltr),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          tooltip: "click me",
          child: const Text("click"),
        ));
  }
}
