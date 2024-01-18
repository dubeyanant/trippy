import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:trippy/screens/dashboard.dart';
import 'package:trippy/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var checkLoginStatus = prefs.getBool("loginStatus");
  bool login = true;
  if (checkLoginStatus == null || checkLoginStatus == false) login == false;

  runApp(MyApp(
    isUserLoggedIn: login,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.isUserLoggedIn = false});

  final bool isUserLoggedIn;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.lightGreen,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: isUserLoggedIn ? const Dashboard() : const LoginScreen(),
    );
  }
}
