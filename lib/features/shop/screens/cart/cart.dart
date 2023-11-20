import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ui_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_ui_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_ui_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          TSizes.defaultSpace,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) =>
              const SizedBox(height: TSizes.spaceBtwSections),
          itemBuilder: (_, index) => const Column(
            children: [
              TCartItem(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70),
                      //Add Remove Buttons
                      TProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  TProductPriceText(price: '255'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          TSizes.defaultSpace,
        ),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
