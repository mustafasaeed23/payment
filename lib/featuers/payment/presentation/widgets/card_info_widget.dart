import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/theme/my_theme.dart';
import 'package:payment/core/theme/styles.dart';

class CardInfoWifget extends StatelessWidget {
  const CardInfoWifget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 75,
      decoration: ShapeDecoration(
          color: MyTheme.whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 22),
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/logo.svg"),
            const SizedBox(
              width: 23,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credit Card',
                  style: Styles.style18SemiBold,
                ),
                Text(
                  "Mastercard **78",
                  style: Styles.style18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}