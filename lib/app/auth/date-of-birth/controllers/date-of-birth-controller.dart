import 'package:by_by_cedit/app/auth/gender/screens/gender-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';
import '../../login/screens/login-screen.dart';

class DateOfBirthController extends BaseController {
  late String dateOfBirth;
  late TextEditingController dateOfBirthTextEditingController;
  List months = [
    'jan',
    'fév',
    'mar',
    'avr',
    'may',
    'juin',
    'juil',
    'out',
    'sep',
    'oct',
    'nov',
    'déc'
  ];

  /// SCREEN LIFE CYCLE
  @override
  void onInit() {
    initValues();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    dateOfBirthTextEditingController.dispose();
    super.onClose();
  }

  /// INITIALISATION
  void initValues() {
    dateOfBirthTextEditingController = TextEditingController(
        text:
            '${DateTime.now().day} ${months[DateTime.now().month - 1]} ${DateTime.now().year}');
  }

  handleNext() {
    Get.to(
      () => GenderScreen(),
      transition: Transition.rightToLeft,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 500),
    );
  }

  setDate(DateTime? date) {
    if (date != null) {
      dateOfBirthTextEditingController.text =
          '${date.day} ${months[date.month - 1]} ${date.year}';
      update();
    }
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
