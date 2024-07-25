// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:payment/core/theme/my_theme.dart';
import 'package:payment/core/theme/styles.dart';

class CustomButton extends StatelessWidget {
  String text;

  CustomButton({super.key, required this.text, required this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 63,
          width: double.infinity,
          decoration: ShapeDecoration(
              color: MyTheme.greenColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
          child: Center(
            child: Text(
              text,
              style: Styles.style22,
            ),
          )),
    );
  }
}
