import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/briefs/getting_briefs.dart';
import 'package:myapp/home/index_state.dart';
import 'package:myapp/home/navigation_bar.dart';
import 'package:myapp/profile/profile_screen.dart';
import 'package:myapp/resources/resources_screent.dart';

class AppHome extends ConsumerWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.watch(navigationIndexProvider);
    return Scaffold(
      body: <Widget>[
        const Center(
          child: Text("Home page"),
        ),
        const GetBriefs(),
        const Resources(),
        const Profile(),
      ][index],
      bottomNavigationBar: const AppNavigation(),
    );
  }
}
