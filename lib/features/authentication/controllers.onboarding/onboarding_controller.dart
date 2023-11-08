import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  ///variable
  final pageControlelr = PageController();
  //getx 상태관리 obs를 사용할때
  Rx<int> currentPageIndex = 0.obs;

  ///Update Current Index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageControlelr.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  ///Update Current Index& jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageControlelr.animateToPage(page,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  ///Update Current Index& jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageControlelr.animateToPage(2,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
