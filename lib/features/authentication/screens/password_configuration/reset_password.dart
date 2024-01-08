import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';

import '../../../../utils/constants/image_strings.dart';

import '../../../../utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';

import '../../../../utils/helpers/helper_functions.dart';

import '../../controllers/forget_password_controller.dart';

import '../login/login.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());

    return Scaffold(
      /// Appbar to go back OR close all screens and Goto LoginScreen()

      appBar: YbAppBar(
        actions: [
          IconButton(onPressed: () => Get.offAll(const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(YbSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of screen width

              Image(
                image: const AssetImage(YbImages.deliveredEmailIllustration),
                width: YbHelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: YbSizes.spaceBtwSections),

              /// Title & SubTitle

              Text(YbTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),

              const SizedBox(height: YbSizes.spaceBtwItems),

              Text('For Support:\nyumebazaar@gmail.com', textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelLarge),

              const SizedBox(height: YbSizes.spaceBtwItems),

              Text(
                YbTexts.changeYourPasswordSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),

              const SizedBox(height: YbSizes.spaceBtwSections),

              /// Buttons

              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.offAll(() => const LoginScreen()), child: const Text(YbTexts.done))),

              const SizedBox(height: YbSizes.spaceBtwItems),

              SizedBox(width: double.infinity, child: TextButton(onPressed: () => controller.resendPasswordResetEmail(email), child: const Text(YbTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
