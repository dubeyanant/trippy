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
      body: Center(child: Image.network(imageURL)),
    );
  }
}
