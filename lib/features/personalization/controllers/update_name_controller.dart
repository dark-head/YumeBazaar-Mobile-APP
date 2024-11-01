import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/repositories/user/user_repository.dart';

import '../../../utils/constants/image_strings.dart';

import '../../../utils/helpers/network_manager.dart';

import '../../../utils/popups/full_screen_loader.dart';

import '../../../utils/popups/loaders.dart';

import '../screens/profile/profile.dart';

import 'user_controller.dart';

/// Controller to manage user-related functionality.

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();

  final lastName = TextEditingController();

  final email = TextEditingController();

  final phoneNumber = TextEditingController();

  final userController = UserController.instance;

  final userRepository = Get.put(UserRepository());

  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  /// init user data when Home Screen appears

  @override
  void onInit() {
    initializeNames();

    super.onInit();
  }

  /// Fetch user record

  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;

    lastName.text = userController.user.value.lastName;

    email.text = userController.user.value.email;

    phoneNumber.text = userController.user.value.phoneNumber;
  }

  Future<void> updateUserName() async {
    try {
      // Start Loading

      TFullScreenLoader.openLoadingDialog('We are updating your information...', YbImages.docerAnimation);

      // Check Internet Connectivity

      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        TFullScreenLoader.stopLoading();

        return;
      }

      // Form Validation

      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();

        return;
      }

      // Update user's first & last name in the Firebase Firestore

      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),

        'LastName': lastName.text.trim(),

        // 'Email': email.text,

        'PhoneNumber': phoneNumber.text,
      };

      await userRepository.updateSingleField(name);

      // Update the Rx User value

      userController.user.value.firstName = firstName.text.trim();

      userController.user.value.lastName = lastName.text.trim();

      // userController.user.value.email = email.text;

      userController.user.value.phoneNumber = phoneNumber.text;

      // Remove Loader

      TFullScreenLoader.stopLoading();

      // Show Success Message

      YbLoaders.successSnackBar(title: 'Congratulations', message: 'Your Name has been updated.');

      // Move to previous screen.

      Get.off(() => const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();

      YbLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
