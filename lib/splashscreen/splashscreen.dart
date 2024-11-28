import 'package:flutter/material.dart';

import 'package:hotel/loginscreen/login.dart'; // Adjust path based on your folder structure.

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 900), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginSignupScreen()),
          (Route<dynamic> reout) => false);
      // Do something
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.asset("assetes/logo.png")),
    );
  }
}
