import 'package:flutter/material.dart';
import 'Features/Home/views/home_view.dart';
import 'Features/auth/views/auth_view.dart';
import "TODO App/Let's_Start.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthView(),
    );

  }
}
