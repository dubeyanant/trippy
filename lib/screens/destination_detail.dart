import 'package:flutter/material.dart';

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
          child: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(24),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageURL,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text('A random quote'),
        ],
      )),
    );
  }
}
