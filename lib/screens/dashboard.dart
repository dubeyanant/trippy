import 'package:flutter/material.dart';
import 'package:trippy/widgets/background_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trippy'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ListView(children: const [
          BackgroundCard(),
          BackgroundCard(),
          BackgroundCard(),
        ]),
      ),
    );
  }
}
