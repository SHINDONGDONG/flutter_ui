import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_ui_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_ui_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          ///Cart Item
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),

          ///Add remove button row with total price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///
                Row(
                  children: [
                    //Extra space
                    SizedBox(width: 70),
                    //Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                //--product total price
                TProductPriceText(price: '255'),
              ],
            ),
        ],
      ),
    );
  }
}
