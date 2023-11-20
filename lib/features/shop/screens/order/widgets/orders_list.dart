import 'package:flutter/material.dart';
import 'package:flutter_ui_app/features/shop/screens/order/widgets/order_item.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class TOrderListItem extends StatelessWidget {
  const TOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwItems),
        itemCount: 10,
        itemBuilder: (_, index) => const OrderItem());
  }
}
