import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutter_ui_app/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter_ui_app/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
