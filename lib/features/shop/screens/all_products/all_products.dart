import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ui_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Name',
      'Higher Price',
      'Lower Price',
      'Sale',
      'Newset',
      'Popularity'
    ];
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts(items: items),
        ),
      ),
    );
  }
}
