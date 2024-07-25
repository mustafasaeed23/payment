import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment/core/theme/my_theme.dart';
import 'package:payment/core/theme/styles.dart';
import 'package:payment/featuers/payment/presentation/widgets/card_info_widget.dart';
import 'package:payment/featuers/payment/presentation/widgets/payment_info_item.dart';
import 'package:payment/featuers/payment/presentation/widgets/total_price.dart';

class SuccessCard extends StatelessWidget {
  const SuccessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
          color: Colors.grey.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank You!',
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(text: 'Date', value: '01/24/2023'),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(text: 'Time', value: '10:15 AM'),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(text: 'To', value: 'Sam Louis'),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            TotalPrice(title: "Total", value: "\$50.97"),
            const SizedBox(
              height: 30,
            ),
            const CardInfoWifget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/barcode.png"),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                              width: 1.50, color: MyTheme.greenColor))),
                  child: Center(
                    child: Text(
                      "PAID",
                      style: Styles.style24.copyWith(color: MyTheme.greenColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
