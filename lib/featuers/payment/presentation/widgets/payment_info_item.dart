import 'package:flutter/material.dart';
import 'package:payment/core/theme/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.text, required this.value});
  final String text, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.style18SemiBold,
        ),
      ],
    );
  }
}