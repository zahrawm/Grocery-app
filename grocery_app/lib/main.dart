import 'package:flutter/material.dart';
import 'package:grocery_app/screen/grocery_screen.dart.dart';
import 'package:grocery_app/screen/home_screen.dart' show HomeScreen;

import 'package:grocery_app/screen/login_screen.dart';
import 'package:grocery_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashScreen(),
        '/login': (_) => const LoginScreen(),
        '/home': (_) => const HomeScreen(),
        '/grocery': (_) => const GroceryScreen(),
      },
    );
  }
}
