// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';
import 'package:payment/featuers/payment/presentation/widgets/body_cart_view.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(title: "My Cart"),
      body: const BodyCartView(),
    );
  }
}
