import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/custom_shpes/containers/circular_container.dart';
import 'package:flutter_ui_app/utils/constants/colors.dart';
import 'package:flutter_ui_app/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColors = THelperFunctions.getColor(text) != null;

    return Theme(
      //Theme으로 감싸주고 Canvas클러는 transprent로 부모의 색상을 따라가게한다.
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColors ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar: isColors
            ? TCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: THelperFunctions.getColor(text)!)
            : null,
        labelPadding: isColors ? const EdgeInsets.all(0) : null,
        padding: isColors ? const EdgeInsets.all(0) : null,
        shape: isColors ? const CircleBorder() : null,
        // selectedColor: Colors.green,
        backgroundColor: isColors ? Colors.green : null,
      ),
    );
  }
}
