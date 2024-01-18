import 'package:flutter/material.dart';

import 'dart:convert';
import 'dart:developer' as developer;

import 'package:http/http.dart' as http;

class RandomQuote extends StatelessWidget {
  const RandomQuote({super.key});

  Future<Map<String, dynamic>> fetchQuote() async {
    // Open API: https://forismatic.com/en/api/
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
          developer.log(
            'Error:',
            name: 'Quote loading failed',
            error: snapshot.error,
          );
          return Column(
            children: [
              Text(
                "I think, therefore I am.",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                "~ René Descartes's",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontStyle: FontStyle.italic),
              )
            ],
          );
        } else {
          Map<String, dynamic> quoteData =
              snapshot.data as Map<String, dynamic>;

          String quoteText = quoteData['quoteText'] ?? 'No quote available';
          String quoteAuthor =
              quoteData['quoteAuthor'] ?? 'No author available';

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
