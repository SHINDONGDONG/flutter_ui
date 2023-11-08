import 'package:flutter/material.dart';
import 'package:flutter_ui_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:flutter_ui_app/utils/device/device_utility.dart';
import 'package:flutter_ui_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  //dark일경우

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageControlelr,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
