import 'package:flutter/material.dart';
import 'package:retest1/views/home_screen.dart';

void main() {
  runApp(const ApiApp());
}

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
          
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
