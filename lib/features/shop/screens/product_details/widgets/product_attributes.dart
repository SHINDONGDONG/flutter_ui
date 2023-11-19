import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/chips/choice_chip_widget.dart';
import 'package:flutter_ui_app/common/widgets/products/product_cards/rounded_container.dart';
import 'package:flutter_ui_app/common/widgets/texts/product_price_text.dart';
import 'package:flutter_ui_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_ui_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:flutter_ui_app/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                //title,priec,and stock
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price : ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///Actual price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          ///Sale Price
                          const TProductPriceText(price: '20'),
                        ],
                      ),

                      ///Stock
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const TProductTitleText(
                title:
                    'This is the decription of the Product and it can go upto max 4 line',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
          //Variation Description
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// --Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            //버튼이 선택되었을 때 ChoiceChip
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Teal',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Pink',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Grey',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Orange',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Purple',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Black',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),

        /// --Size
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            //버튼이 선택되었을 때 ChoiceChip
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
