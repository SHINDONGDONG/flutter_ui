import 'package:flutter/material.dart';
import 'package:flutter_ui_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_ui_app/common/widgets/images/t_circular_image.dart';
import 'package:flutter_ui_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_ui_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_ui_app/utils/constants/image_strings.dart';
import 'package:flutter_ui_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //Detail
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Profile Information
              TProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Coding with T',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'coding_with_t',
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Heading Personal Info
              TProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '45678',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'coding_with_t',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+81-70-8347-0945',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '10 Oct 1992',
              ),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
