import 'package:flutter/material.dart';
import 'package:payment/core/utils/App_Colors.dart';
import 'package:payment/features/data/payment_methods_data.dart';

class tabBarContainerWidget extends StatelessWidget {
  bool isActive = false;

  PaymentMethods paymentMethods;
  tabBarContainerWidget({required this.paymentMethods, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 90,
        height: 50,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.9,
                color: isActive ? AppColors.tealColor : AppColors.greyColor),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Image.asset(
          paymentMethods.imagePath,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
