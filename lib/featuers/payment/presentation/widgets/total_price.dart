import 'package:flutter/material.dart';
import 'package:payment/core/theme/styles.dart';

class TotalPrice extends StatelessWidget {
  final String title, value;

  TotalPrice({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style24,
        )
      ],
    );
  }
}
