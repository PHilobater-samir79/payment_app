import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment/core/utils/App_Colors.dart';

class CustomCreditCard extends StatefulWidget {
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  @override
  Widget build(BuildContext context) {
    String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
    bool showBackView = false;

    final GlobalKey<FormState> formKey = GlobalKey();

    return Column(
      children: [
        CreditCardWidget(
            isHolderNameVisible: true,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            bankName: 'Bank AlAhly',
            cardBgColor: AppColors.tealColor,
            animationDuration: const Duration(microseconds: 500),
            onCreditCardWidgetChange: (value) {
              
            }),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (CreditCardModel) {
              cardNumber = CreditCardModel.cardNumber;
              expiryDate = CreditCardModel.expiryDate;
              cardHolderName = CreditCardModel.cardHolderName;
              cvvCode = CreditCardModel.cvvCode;
              showBackView = CreditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: formKey),
        SizedBox(height: 10,),
        MaterialButton(onPressed: (){},)
      ],
    );
  }
}
