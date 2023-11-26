import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_ui_app/features/authentication/screens/login/login.dart';
import 'package:flutter_ui_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///Variables
  final deviceStorage = GetStorage();

  ///Called From main. dart on app launch

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 2), () {
      FlutterNativeSplash.remove();
    });

    screenRedirect();
    super.onReady();
  }

//screen이 처음인지 아닌지 확인한다.
  void screenRedirect() async {
    //Local Storage 아무것도업스면!

    if (kDebugMode) {
      debugPrint(
          "===============================GET STORAGE =============================");
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);

    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnboardingScreen());
  }
}
