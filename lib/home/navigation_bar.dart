import 'package:flutter/material.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int _currentIndex = 0;

  final _destinations = [
    const NavigationDestination(icon: Icon(Icons.home_outlined), label: 'home'),
    const NavigationDestination(
        icon: Icon(Icons.book_outlined), label: 'resources'),
    const NavigationDestination(
        icon: Icon(Icons.pin_outlined), label: 'briefs'),
    const NavigationDestination(
        icon: Icon(Icons.person_outline), label: 'profile')
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: _destinations,
      onDestinationSelected: (index) => setState(() => _currentIndex = index),
    );
  }
}
