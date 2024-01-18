import 'package:flutter/material.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

class RandomQuote extends StatelessWidget {
  const RandomQuote({super.key});

  Future<Map<String, dynamic>> fetchQuote() async {
    final response = await http.get(Uri.parse(
        'http://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load quote!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchQuote(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          Map<String, dynamic> quoteData =
              snapshot.data as Map<String, dynamic>;

          String quoteText =
              quoteData['quoteText'] ?? 'No quote text available';
          String quoteAuthor = quoteData['quoteAuthor'] ?? 'Anonymous';

          return Column(
            children: [
              Text(
                quoteText,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                '~ $quoteAuthor',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontStyle: FontStyle.italic),
              )
            ],
          );
        }
      },
    );
  }
}
