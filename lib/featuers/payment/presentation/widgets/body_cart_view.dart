import 'package:flutter/material.dart';
import 'package:payment/core/theme/my_theme.dart';
import 'package:payment/featuers/payment/presentation/views/payment_details.dart';
import 'package:payment/featuers/payment/presentation/widgets/custom_button.dart';
import 'package:payment/featuers/payment/presentation/widgets/order_info_item.dart';
import 'package:payment/featuers/payment/presentation/widgets/payment_methods_bottom_sheet.dart';
import 'package:payment/featuers/payment/presentation/widgets/total_price.dart';

class BodyCartView extends StatelessWidget {
  const BodyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset("assets/images/basket.png"),
          const SizedBox(
            height: 25,
          ),
          OrderInfoItem(title: "Order SubTotal", value: "\$42.97"),
          const SizedBox(
            height: 3,
          ),
          OrderInfoItem(title: "Discount", value: "\$0"),
          const SizedBox(
            height: 3,
          ),
          OrderInfoItem(title: "Shipping", value: "\$8"),
          const SizedBox(
            height: 3,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              thickness: 2,
              height: 30,
              color: MyTheme.blackColor,
            ),
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          TotalPrice(title: "Total", value: "\$50.97"),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => const PaymentDetails()));
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  context: context,
                  builder: (context) {
                    return const PaymentMethodsBottomSheet();
                  });
            },
            text: 'Confirm Payment',
          ),
          // const SizedBox(
          //   height: 12,
          // ),
        ],
      ),
    );
  }
}
