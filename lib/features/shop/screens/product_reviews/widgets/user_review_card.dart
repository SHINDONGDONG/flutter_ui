import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/products/product_cards/rounded_container.dart';
import 'package:flutter_ui_app/features/shop/screens/product_reviews/widgets/rating_iindicator.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/image_strings.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:flutter_ui_app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),

        //Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          'Excepteur nostrud consectetur laboris culpa irure laboris. Ut voluptate aliquip non et duis ipsum elit in Lorem. Sint amet commodo anim nostrud officia velit duis cupidatat enim in consectetur duis. Laborum exercitation veniam non non cupidatat.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'もっと見る',
          trimExpandedText: 'show less',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'T Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '02 Nov 20223',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'Excepteur nostrud consectetur laboris culpa irure laboris. Ut voluptate aliquip non et duis ipsum elit in Lorem. Sint amet commodo anim nostrud officia velit duis cupidatat enim in consectetur duis. Laborum exercitation veniam non non cupidatat.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'もっと見る',
                  trimExpandedText: 'show less',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
