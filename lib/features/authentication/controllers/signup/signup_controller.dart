import 'package:flutter/material.dart';
import 'package:flutter_ui_app/utils/constants/image_strings.dart';
import 'package:flutter_ui_app/utils/helpers/network_manager.dart';
import 'package:flutter_ui_app/utils/popups/full_screen_loader.dart';
import 'package:flutter_ui_app/utils/popups/loaders.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///variables
  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  /// --SIGNUP
  ///
  Future<void> signup() async {
    try {
      //Start Loading
      TFullScreenLoader.opneLoadingDialog(
          'We are processing your information...', TImages.darkAppLogo);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //Form validation
      if (!signupFormKey.currentState!.validate()) return;
    } catch (e) {
      TLoader.errorSnacBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
