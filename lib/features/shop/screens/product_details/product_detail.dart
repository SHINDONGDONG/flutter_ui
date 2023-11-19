import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ui_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutter_ui_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:flutter_ui_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter_ui_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:flutter_ui_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_ui_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1-product image
            const TProductImageSlider(),

            /// 2-product details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - rating&share button
                  const TRatingAndShare(),

                  /// - price, title, stock & brand
                  const TProductMetaData(),

                  /// --attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for blue nike sleeve less vest. there are more thins that can be This is a product description for blue nike sleeve less vest. there are more thins that can be ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// -- Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Reviews(199)', showActionButton: false),
                      IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
