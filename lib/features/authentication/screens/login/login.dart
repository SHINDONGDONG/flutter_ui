import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/styles/spacing_style.dart';
import 'package:flutter_ui_app/features/authentication/screens/login/login_social_button.dart';
import 'package:flutter_ui_app/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:flutter_ui_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ui_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo & title / subtitle
              TLoginHeader(),
              TLoginForm(),
              //divider
              TLoginDivider(),
              //Footer
              SizedBox(height: TSizes.spaceBtwSections),
              TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
