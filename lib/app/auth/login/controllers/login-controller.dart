import 'package:by_by_cedit/app/auth/mobile-number/screens/mobile-number-screen.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../../config/controllerConfig/base_controller.dart';

class LoginController extends BaseController {
  login(){
    Get.to(
          () => MobileNumberScreen(),
      transition: Transition.leftToRight,
      curve: Curves.ease,
      duration: const Duration(milliseconds: 500),
    );
  }
}