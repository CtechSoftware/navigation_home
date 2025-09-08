import 'package:flutter/material.dart';
import 'package:navigation_home/screens/login_screen.dart';
import 'package:navigation_home/screens/home_screen.dart';
import 'package:navigation_home/screens/device_details_screen.dart';

void main() {
  runApp(const NavicuryApp());
}

class NavicuryApp extends StatelessWidget {
  const NavicuryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navicury',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/device_details': (context) => const DeviceDetailsScreen(),
      },
    );
  }
}
