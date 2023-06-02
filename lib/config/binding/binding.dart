import 'package:by_by_cedit/app/auth/country/controllers/country-controller.dart';
import 'package:by_by_cedit/app/auth/date-of-birth/controllers/date-of-birth-controller.dart';
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

import '../../app/auth/cin/controllers/cin-controller.dart';
import '../../app/auth/gender/controllers/gender-controller.dart';
import '../../app/auth/username/controllers/username-controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => MainLoginController());
    Get.lazyPut(() => UserNameController());
    Get.lazyPut(() => DateOfBirthController());
    Get.lazyPut(() => GenderController());
    Get.lazyPut(() => CountryController());
    Get.lazyPut(() => CinController());
    Get.lazyPut(() => MobileNumberController());
    Get.lazyPut(() => PasswordController());
    Get.lazyPut(() => InfoVerificationController());
    Get.lazyPut(() => InfoCorrectionController());
    Get.lazyPut(() => PrivacyPolicyController());
    Get.lazyPut(() => VerificationCodeController());
    Get.lazyPut(() => ProfilePictureController());
  }
}
