import 'package:flutter/material.dart';
import 'package:hotel/splashscreen.dart';
import 'package:hotel/splashscreen/splashscreen.dart'; // Adjust path based on your folder structure.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splashscreen(),
      
    );
  }
}
