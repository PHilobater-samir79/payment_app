import 'package:flutter/material.dart';
import 'package:payment/core/utils/App_Colors.dart';
import 'package:payment/core/utils/App_Strings.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/presentation/screens/my_cart_screen.dart';
import 'package:payment/features/presentation/widgets/custom_Credit_Card.dart';
import 'package:payment/features/presentation/widgets/tab_Bar_widget.dart';

class PaymentDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.transparentColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppStrings.paymentDetails,
          style: AppStyles.style25,
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyCartScreen();
              }));
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColors.blackColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            tabBarWidget(),
            CustomCreditCard(),
          ],
        ),
      ),
    );
  }
}

