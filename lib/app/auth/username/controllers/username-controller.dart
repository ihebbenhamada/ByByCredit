import 'package:by_by_cedit/app/auth/date-of-birth/screens/date-of-birth-screen.dart';
import 'package:by_by_cedit/app/auth/login/screens/login-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';

class UserNameController extends BaseController {
  /// TEXT CONTROLLERS
  late TextEditingController firstNameTextEditingController;
  late TextEditingController lastNameTextEditingController;

  /// SCREEN LIFE CYCLE
  @override
  void onInit() {
    initValues();
    super.onInit();
  }

  @override
  void dispose() {
    firstNameTextEditingController.dispose();
    lastNameTextEditingController.dispose();
    super.dispose();
  }

  /// INITIALISATION
  void initValues() {
    firstNameTextEditingController = TextEditingController();
    lastNameTextEditingController = TextEditingController();
  }

  handleNext() {
    Get.to(
      () => DateOfBirthScreen(),
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
