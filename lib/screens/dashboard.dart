import 'package:flutter/material.dart';

import 'package:trippy/data/destination_data.dart';
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
        child: ListView(
          children: data
              .map(
                (item) => BackgroundCard(
                  destination: item.destination,
                  idealDuration: item.idealDuration,
                  imageURL: item.imageURL,
                  placesToVisit: item.placesToVisit,
                  tagline: item.tagline,
                  timeToVisit: item.timeToVisit,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
