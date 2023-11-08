import 'package:flutter/material.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/constants/text_strings.dart';
import 'package:flutter_ui_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class TLoginDivider extends StatelessWidget {
  const TLoginDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(TTexts.orSignInWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60),
        ),
      ],
    );
  }
}
