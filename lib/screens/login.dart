import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:trippy/screens/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _pinController = TextEditingController();
  final String _username = 'anant';
  final String _pin = '123';

  @override
  void dispose() {
    _usernameController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void showInfoMessage(String message) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
    }

    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/icon.png'),
              const SizedBox(height: 32),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _pinController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Pin',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Theme.of(context).colorScheme.primary,
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 15,
                    ),
                  ),
                ),
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  if (_usernameController.text.trim() == _username &&
                      _pinController.text.trim() == _pin) {
                    pref.setBool("loginStatus", true);
                    if (context.mounted) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ),
                      );
                    }
                  } else {
                    showInfoMessage('Wrong Credentials. Please try again!');
                  }
                },
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
