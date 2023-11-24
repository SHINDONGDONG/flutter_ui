import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ui_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ui_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Nike',
      'Puma',
      'Adidas',
      'The North Face',
    ];
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///brand Detail
              const TBrandCard(showBorder: true),
              const SizedBox(height: TSizes.spaceBtwSections),
              TSortableProducts(items: items),
            ],
          ),
        ),
      ),
    );
  }
}
