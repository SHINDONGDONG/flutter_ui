import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ui_app/features/shop/screens/product_reviews/widgets/rating_iindicator.dart';
import 'package:flutter_ui_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter_ui_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Sunt eu occaecat Lorem excepteur dolor enim sit quis ipsum adipisicing. Velit ullamco ad sit ullamco proident ad. Reprehenderit velit nostrud ea laboris. Ea labore non sunt ex. Aute irure veniam commodo id magna laborum consectetur ea laboris adipisicing pariatur voluptate. Sint proident laborum sit elit dolore cupidatat ut ipsum laboris dolor.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '12.611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///User Revies List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
