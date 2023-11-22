import 'package:flutter/material.dart';
import 'package:payment/features/presentation/screens/my_cart_screen.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartScreen(),

    );
  }
}
