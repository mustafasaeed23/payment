import 'package:flutter/material.dart';
import 'package:payment/featuers/splash/splash_screen.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: MyTheme.lightTheme,
      home:  SplashScreen(),
    );
  }
}
