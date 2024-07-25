import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/core/theme/my_theme.dart';

class PaymentDetailsItem extends StatelessWidget {
  final bool isActive;
  final String imagePath;

  const PaymentDetailsItem(
      {super.key, required this.isActive, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color: isActive ? MyTheme.greenColor : MyTheme.lightBlack),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
                color: isActive ? MyTheme.greenColor : MyTheme.whiteColor,
                blurRadius: 4,
                offset: const Offset(0, 3),
                spreadRadius: 0),
          ]),
      child: Container(
        decoration: BoxDecoration(
          color: MyTheme.whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset(
            imagePath,
            // height: 24,
          ),
        ),
      ),
    );
  }
}
