import 'package:flutter/material.dart';
import 'package:flutter_ui_app/features/authentication/screens/login/login_social_button.dart';
import 'package:flutter_ui_app/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:flutter_ui_app/features/authentication/screens/signup.widgets/widgets/signup_form.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';
import 'package:flutter_ui_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //signup screen
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwItems),
              TLoginDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              //Social Buttons.
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
