import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/home/index_state.dart';
import 'package:myapp/home/navigation_bar.dart';

class AppHome extends ConsumerWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.watch(navigationIndexProvider);
    return Scaffold(
      body: Center(
        child: Text(index.toString()),
      ),
      bottomNavigationBar: const AppNavigation(),
    );
  }
}
