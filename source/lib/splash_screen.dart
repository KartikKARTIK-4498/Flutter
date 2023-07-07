import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome(); // Navigate to the home screen after 4 seconds
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(Duration(seconds: 2)); // Wait for 4 seconds

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) =>
              MyHomeScreen()), // Show the home screen and replace the current screen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF4C4DDC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image(
                height: 200,
                width: 200,
                image: AssetImage("images/icon.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "Kartik Portfolio",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}