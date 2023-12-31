import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ui_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value) {},
          items: items
              .map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        TGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const TProductCardVertical()),
      ],
    );
  }
}
