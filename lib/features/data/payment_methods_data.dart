class PaymentMethods {
  final String imagePath ;

  PaymentMethods({required this.imagePath});

  static List <PaymentMethods> methodsImage = [
    PaymentMethods(imagePath: 'assets/images/master.png' ),
    PaymentMethods(imagePath: 'assets/images/paypal.png'),


  ];

}