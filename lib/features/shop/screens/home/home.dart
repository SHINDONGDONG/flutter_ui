import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/custom_shpes/containers/primary_header_container.dart';
import 'package:flutter_ui_app/common/widgets/custom_shpes/containers/search_container.dart';
import 'package:flutter_ui_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_ui_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_ui_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ui_app/features/shop/screens/widgets/home_appbar.dart';
import 'package:flutter_ui_app/features/shop/screens/widgets/home_categories.dart';
import 'package:flutter_ui_app/features/shop/screens/widgets/promo_slider.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/image_strings.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header --
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Searchbar
                  const TSearchContainer(
                    text: 'Search in Store',
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// --- Categories
                        const THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),

                  /// --Popular Products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return const TProductCardVertical();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
