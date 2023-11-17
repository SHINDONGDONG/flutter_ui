import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_ui_app/common/widgets/products/product_cards/rounded_container.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:flutter_ui_app/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          /// --Brands
          TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.md),
            showBorder: true,
            borderColor: TColors.darkGrey,
            backgroundColor: Colors.transparent,
            margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
            child: Column(
              children: [
                const TBrandCard(showBorder: false),
                const SizedBox(height: TSizes.spaceBtwItems),

                /// --brand top 3 product images
                Row(
                  children: images
                      .map((e) => brandTopProductImageWidget(e, context))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
