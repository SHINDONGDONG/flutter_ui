import 'package:flutter/material.dart';
import 'package:flutter_ui_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_ui_app/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  //TODO: add Widgets Binding
  //TODO: Init Local Storage
  //TODO: Await Native Slash
  //TODO: Init Firebase
  //TODO: Init Auth

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
