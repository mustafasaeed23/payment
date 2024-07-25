import 'package:flutter/material.dart';
import 'package:payment/featuers/payment/presentation/views/success_view.dart';
import 'package:payment/featuers/payment/presentation/widgets/custom_button.dart';
import 'package:payment/featuers/payment/presentation/widgets/custom_credit_card.dart';

import 'package:payment/featuers/payment/presentation/widgets/payment_methods_list_view.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          PaymentMethods(),
          const SizedBox(
            height: 10,
          ),
          CustomCreditCard(
            formkey: formkey,
            autovalidateMode: autovalidateMode,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButton(
              text: 'Pay',
              onTap: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SuccessView()));
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
