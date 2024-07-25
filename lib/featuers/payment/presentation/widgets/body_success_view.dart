import 'package:flutter/material.dart';
import 'package:payment/core/theme/my_theme.dart';
import 'package:payment/featuers/payment/presentation/widgets/success_cart.dart';

class BodySuccessView extends StatelessWidget {
  const BodySuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const SuccessCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: Row(
              children: List.generate(
                  20,
                  (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            height: 2,
                            color: Colors.grey,
                          ),
                        ),
                      )),
            ),
          ),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: MyTheme.whiteColor,
              )),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              right: -20,
              child: const CircleAvatar(
                backgroundColor: MyTheme.whiteColor,
              )),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: MyTheme.greyColor,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: MyTheme.greenColor,
                child: Icon(
                  Icons.check,
                  color: MyTheme.whiteColor,
                  size: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






