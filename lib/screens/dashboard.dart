import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:trippy/data/destination_data.dart';
import 'package:trippy/screens/login.dart';
import 'package:trippy/widgets/background_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trippy'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              pref.setBool("loginStatus", false);
              if (context.mounted) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              }
            },
            icon: const Icon(Icons.logout),
          ),
        ],
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
