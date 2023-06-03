import 'package:by_by_cedit/app/auth/username/screens/username-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';

class LoginController extends BaseController {
  /// TEXT CONTROLLERS
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;

  /// VARIABLES
  late bool isPasswordVisible;

  /// SCREEN LIFE CYCLE
  @override
  void onInit() {
    initValues();
    super.onInit();
  }

  @override
  void dispose() {
    passwordTextEditingController.dispose();
    emailTextEditingController.dispose();
    super.dispose();
  }

  /// INITIALISATION
  void initValues() {
    passwordTextEditingController = TextEditingController();
    emailTextEditingController = TextEditingController();
    isPasswordVisible = false;
  }

  /// FUNCTIONS
  showHidePassword() {
    isPasswordVisible = !isPasswordVisible;
    update();
  }

  handleLogin() {}
  handleCreateAccount() {
    Get.to(
      () => UserNameScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 500),
    );
  }
}
