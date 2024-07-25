import 'package:flutter/material.dart';
import 'package:payment/core/theme/styles.dart';

AppBar customeAppBar({required final String title}) {
  return AppBar(
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: const Icon(
      Icons.arrow_back,
      size: 30,
      color: Colors.black,
    ),
  );
}
