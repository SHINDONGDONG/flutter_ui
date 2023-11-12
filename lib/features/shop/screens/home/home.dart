import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/custom_shpes/containers/primary_header_container.dart';
import 'package:flutter_ui_app/features/shop/screens/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header --
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                ///Appbar
                THomeAppBar(),

                /// Searchbar
                /// Categories
                ///
              ],
            )),
          ],
        ),
      ),
    );
  }
}
