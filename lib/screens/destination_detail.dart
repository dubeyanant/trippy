import 'package:flutter/material.dart';

import 'package:trippy/widgets/random_quote.dart';

class DestinationDetail extends StatelessWidget {
  const DestinationDetail({
    super.key,
    required this.imageURL,
    required this.destinationTitle,
  });

  final String imageURL;
  final String destinationTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(destinationTitle)),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageURL,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              const RandomQuote(),
            ],
          ),
        ),
      ),
    );
  }
}
