import 'package:by_by_cedit/app/auth/country/screens/country-screen.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';
import '../../login/screens/login-screen.dart';

class GenderController extends BaseController {
  handleNext() {
    Get.to(
      () => CountryScreen(),
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
