import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_app_bar.dart';
import 'package:payment/featuers/payment/presentation/widgets/payment_detalis_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(title: "Payment Details"),
      body: const  PaymentDetailsBody(),
    );
  }
}
