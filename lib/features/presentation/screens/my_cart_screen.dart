import 'package:flutter/material.dart';
import 'package:payment/core/utils/App_Colors.dart';
import 'package:payment/core/utils/App_Strings.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/presentation/screens/payment_details_screen.dart';
import 'package:payment/features/presentation/widgets/orders_money.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.transparentColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppStrings.myCart,
          style: AppStyles.style25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/cart.png',
                  height: height * .45,
                  width: width,
                ),
              ),
              SizedBox(
                height: height * .07,
              ),
              OrdersMoneyRow(
                  text: AppStrings.orderSubtotal, money: AppStrings.money),
              const SizedBox(
                height: 7,
              ),
              OrdersMoneyRow(
                  text: AppStrings.discount, money: AppStrings.money),
              const SizedBox(
                height: 7,
              ),
              OrdersMoneyRow(
                  text: AppStrings.shipping, money: AppStrings.money),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                  width: width * .8,
                  child: Divider(color: AppColors.greyColor, thickness: 1)),
              const SizedBox(
                height: 7,
              ),
              OrdersMoneyRow(text: AppStrings.total, money: AppStrings.money),
              SizedBox(
                height: height * .05,
              ),
              SizedBox(
                height: height * .07,
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context ){
                      return PaymentDetailsScreen();
                    }));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.tealColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  child: Text(
                    AppStrings.completePayment,
                    style:
                        AppStyles.style25.copyWith(color: AppColors.whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
