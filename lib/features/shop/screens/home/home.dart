import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/custom_shpes/containers/primary_header_container.dart';
import 'package:flutter_ui_app/common/widgets/custom_shpes/containers/search_container.dart';
import 'package:flutter_ui_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ui_app/features/shop/screens/widgets/home_appbar.dart';
import 'package:flutter_ui_app/features/shop/screens/widgets/home_categories.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header --
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                ///Appbar
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Searchbar
                TSearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                /// Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// -- Heading
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),

                      /// --- Categories
                      THomeCategories(),
                    ],
                  ),
                )

                ///
              ],
            )),
          ],
        ),
      ),
    );
  }
}
