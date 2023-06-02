import 'package:by_by_cedit/app/auth/cin/controllers/cin-controller.dart';
import 'package:by_by_cedit/app/auth/country/controllers/country-controller.dart';
import 'package:by_by_cedit/app/auth/date-of-birth/controllers/date-of-birth-controller.dart';
import 'package:by_by_cedit/app/auth/gender/controllers/gender-controller.dart';
import 'package:by_by_cedit/app/auth/info-correction/controllers/info-correction-controller.dart';
import 'package:by_by_cedit/app/auth/info-verification/controllers/info-verification-controller.dart';
import 'package:by_by_cedit/app/auth/login/controllers/login-controller.dart';
import 'package:by_by_cedit/app/auth/main-login/controllers/main-login-controller.dart';
import 'package:by_by_cedit/app/auth/mobile-number/controllers/mobile-controller.dart';
import 'package:by_by_cedit/app/auth/password/controllers/password-controller.dart';
import 'package:by_by_cedit/app/auth/privacy-policy/controllers/privacy-policy-controller.dart';
import 'package:by_by_cedit/app/auth/profile-picture/controllers/profile-picture-controller.dart';
import 'package:by_by_cedit/app/auth/verification-code/controllers/verification-code-controller.dart';
import 'package:get/get.dart';

import '../app/auth/username/controllers/username-controller.dart';


class LoginPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(),);
  }
}
class MainLoginPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainLoginController(),);
  }
}
class UserNamePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserNameController(),);
  }
}

class DateOfBirthPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DateOfBirthController(),);
  }
}
class GenderPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GenderController(),);
  }
}
class CountryPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CountryController(),);
  }
}
class CinPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CinController(),);
  }
}
class MobileNumberPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobileNumberController(),);
  }
}
class PasswordPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordController(),);
  }
}
class InfoVerificationPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InfoVerificationController(),);
  }
}
class InfoCorrectionPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InfoCorrectionController(),);
  }
}
class PrivacyPolicyPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacyPolicyController(),);
  }
}
class VerificationCodePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationCodeController(),);
  }
}
class ProfilePicturePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePictureController(),);
  }
}