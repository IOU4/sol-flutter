import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/home/index_state.dart';

class AppNavigation extends ConsumerStatefulWidget {
  const AppNavigation({super.key});

  @override
  ConsumerState<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends ConsumerState<AppNavigation> {
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
      onDestinationSelected: (index) {
        ref.read(navigationIndexProvider.notifier).set(index);
      },
    );
  }
}
