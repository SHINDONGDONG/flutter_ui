import 'package:flutter/material.dart';
import 'package:flutter_ui_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_ui_app/features/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_ui_app/features/screens.onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_ui_app/features/screens.onboarding/widgets/onboarding_page.dart';
import 'package:flutter_ui_app/features/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_ui_app/utils/constants/image_strings.dart';
import 'package:flutter_ui_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageControlelr,
            //pageview가 변경되었을 때 controller에 업데이트 인디케이터를 담아준다.
            onPageChanged: controller.updatePageIndicator,

            children: const [
              OnboardingPage(
                title: TTexts.onBoardingTitle1,
                image: TImages.onBoardingImage1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                title: TTexts.onBoardingTitle2,
                image: TImages.onBoardingImage2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                title: TTexts.onBoardingTitle3,
                image: TImages.onBoardingImage3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigation(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
