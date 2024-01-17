import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:trippy/screens/dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.teal,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const Dashboard(),
    );
  }
}
