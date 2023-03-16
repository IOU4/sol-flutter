import 'package:flutter/material.dart';
import 'package:myapp/briefs/briefs_screen.dart';
import 'package:myapp/briefs/briefs_service.dart';

class GetBriefs extends StatelessWidget {
  const GetBriefs({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Brief.briefs,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LinearProgressIndicator();
        }
        if (snapshot.hasData) {
          return Briefs(briefs: snapshot.data!);
        }
        return const Center(child: Text("no data"));
      },
    );
  }
}
