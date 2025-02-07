import 'package:flutter/material.dart';
import 'package:payment/featuers/payment/presentation/widgets/custom_button.dart';
import 'package:payment/featuers/payment/presentation/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          PaymentMethods(),
          const SizedBox(
            height: 30,
          ),
          CustomButton(text: "Countinue", onTap: () {}),
        ],
      ),
    );
  }
}
