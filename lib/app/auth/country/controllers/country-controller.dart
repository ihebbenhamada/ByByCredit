import 'package:by_by_cedit/app/auth/cin/screens/cin-screen.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';
import '../../login/screens/login-screen.dart';

class CountryController extends BaseController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  // Search by country name

  handleNext() {
    Get.to(
      () => CinScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 500),
    );
  }

  handleLogin() {
    Get.off(
      () => LoginScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 500),
    );
  }
}
