import 'package:flutter/material.dart';
import 'package:flutter_ui_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:flutter_ui_app/utils/device/device_utility.dart';
import 'package:flutter_ui_app/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        onPressed: () {
          OnboardingController.instance.nextPage();
        },
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
