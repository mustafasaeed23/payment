import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:payment/core/theme/my_theme.dart';
import 'package:payment/featuers/payment/presentation/views/cart_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const MyCartView()));
    });
    return Scaffold(
      backgroundColor: MyTheme.greenColor,
      body: Center(
        child: Lottie.asset("assets/images/Animation - 1721596802416.json"),
      ),
    );
  }
}
