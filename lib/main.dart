import 'package:flutter/material.dart';
import 'package:flutter_ui_app/utils/theme/theme.dart';

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
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
