import 'package:by_by_cedit/app/auth/login/screens/login-screen.dart';
import 'package:by_by_cedit/app/auth/username/screens/username-screen.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';

class MainLoginController extends BaseController {
  login() {
    Get.to(
      () => LoginScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 500),
    );
  }

  handleCreateAccount() {
    Get.to(
      () => UserNameScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 500),
    );
  }
}
