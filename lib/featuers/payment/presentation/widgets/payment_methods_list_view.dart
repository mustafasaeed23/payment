import 'package:flutter/material.dart';
import 'package:payment/featuers/payment/presentation/widgets/payment_details_item.dart';

class PaymentMethods extends StatefulWidget {
  PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentMethodItems = [
    "assets/images/card.svg",
    "assets/images/paypal.svg",
    "assets/images/apple.svg"
  ];

  int isActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: paymentMethodItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                onTap: () {
                  isActiveIndex = index;
                  setState(() {});
                },
                child: PaymentDetailsItem(
                    isActive: isActiveIndex == index,
                    imagePath: paymentMethodItems[index]),
              ),
            );
          }),
    );
  }
}
