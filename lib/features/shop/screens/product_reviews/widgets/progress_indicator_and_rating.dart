import 'package:flutter/material.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/device/device_utility.dart';

class TRatingProgessIndicator extends StatelessWidget {
  const TRatingProgessIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * .8,
            child: LinearProgressIndicator(
              //indicator 채워지는
              value: value,
              //indicator높이
              minHeight: 11,
              backgroundColor: TColors.grey,
              valueColor: const AlwaysStoppedAnimation(TColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
