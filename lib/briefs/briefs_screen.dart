import 'package:flutter/material.dart';
import 'package:myapp/briefs/briefs_service.dart';

class Briefs extends StatelessWidget {
  final List<Brief> briefs;
  const Briefs({required this.briefs, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: briefs.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.network(briefs[index].image),
                  ),
                  Text(
                    "Architect webiste",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    briefs[index].content,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "${briefs[index].launchDate.year}-${briefs[index].launchDate.month}-${briefs[index].launchDate.day}",
                      ),
                      Text(
                        "${briefs[index].deadline.year}-${briefs[index].launchDate.month}-${briefs[index].launchDate.day}",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
