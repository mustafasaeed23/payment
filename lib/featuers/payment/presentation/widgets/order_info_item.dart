import 'package:flutter/material.dart';
import 'package:payment/core/theme/styles.dart';

class OrderInfoItem extends StatelessWidget {
  final String title, value;

  OrderInfoItem({
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
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.style18,
        )
      ],
    );
  }
}
