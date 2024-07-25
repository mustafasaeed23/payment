import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';
import 'package:payment/featuers/payment/presentation/widgets/body_success_view.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(title: ""),
      body: const BodySuccessView(),
    );
  }
}
