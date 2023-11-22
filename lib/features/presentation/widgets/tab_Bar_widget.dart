import 'package:flutter/material.dart';
import 'package:payment/features/data/payment_methods_data.dart';
import 'package:payment/features/presentation/widgets/tab_Bar_container.dart';

class tabBarWidget extends StatefulWidget {
  @override
  State<tabBarWidget> createState() => _tabBarWidgetState();
}

class _tabBarWidgetState extends State<tabBarWidget> {

  int activeIndex = 0 ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          itemCount: PaymentMethods.methodsImage.length,
          shrinkWrap: false,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                activeIndex = index ;
                setState(() {

                });
              },
              child: tabBarContainerWidget(
                paymentMethods: PaymentMethods.methodsImage[index],
                isActive: activeIndex == index ,
              ),
            );
          },
        ),
      ),
    );
  }
}
