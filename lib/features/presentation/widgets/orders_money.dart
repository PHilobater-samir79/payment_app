import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

// ignore: must_be_immutable
class OrdersMoneyRow extends StatelessWidget {
  String text;
  String money;
  OrdersMoneyRow({required this.text, required this.money});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppStyles.style18.copyWith(fontSize: 20),
        ),
        Text(
          money,
          style: AppStyles.style18.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
