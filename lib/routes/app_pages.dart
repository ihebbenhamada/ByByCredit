import 'package:by_by_cedit/app/auth/cin/screens/cin-screen.dart';
import 'package:by_by_cedit/app/auth/country/screens/country-screen.dart';
import 'package:by_by_cedit/app/auth/date-of-birth/screens/date-of-birth-screen.dart';
import 'package:by_by_cedit/app/auth/gender/screens/gender-screen.dart';
import 'package:by_by_cedit/app/auth/info-correction/screens/info-correction-screen.dart';
import 'package:by_by_cedit/app/auth/info-verification/screens/info-verification-screen.dart';
import 'package:by_by_cedit/app/auth/login/screens/login-screen.dart';
import 'package:by_by_cedit/app/auth/main-login/screens/main-login-screen.dart';
import 'package:by_by_cedit/app/auth/mobile-number/screens/mobile-number-screen.dart';
import 'package:by_by_cedit/app/auth/password/screens/password-screen.dart';
import 'package:by_by_cedit/app/auth/privacy-policy/screens/privacy-policy-screen.dart';
import 'package:by_by_cedit/app/auth/profile-picture/screens/profile-picture-screen.dart';
import 'package:by_by_cedit/app/auth/username/screens/username-screen.dart';
import 'package:by_by_cedit/app/auth/verification-code/screens/verification-code-screen.dart';
import 'package:get/get.dart';
import 'app_bindings.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final List<GetPage> routes = <GetPage>[
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: LoginPageBindings(),
    ),
    GetPage(
      name: AppRoutes.mainLogin,
      page: () => MainLoginScreen(),
      binding: MainLoginPageBindings(),
    ),
    GetPage(
      name: AppRoutes.username,
      page: () => UserNameScreen(),
      binding: UserNamePageBindings(),
    ),
    GetPage(
      name: AppRoutes.dateOfBirth,
      page: () => DateOfBirthScreen(),
      binding: DateOfBirthPageBindings(),
    ),
    GetPage(
      name: AppRoutes.gender,
      page: () => GenderScreen(),
      binding: GenderPageBindings(),
    ),
    GetPage(
      name: AppRoutes.country,
      page: () => CountryScreen(),
      binding: CountryPageBindings(),
    ),
    GetPage(
      name: AppRoutes.cin,
      page: () => CinScreen(),
      binding: CinPageBindings(),
    ),
    GetPage(
      name: AppRoutes.mobileNumber,
      page: () => MobileNumberScreen(),
      binding: MobileNumberPageBindings(),
    ),
    GetPage(
      name: AppRoutes.password,
      page: () => PasswordScreen(),
      binding: PasswordPageBindings(),
    ),
    GetPage(
      name: AppRoutes.infoVerification,
      page: () => InfoVerificationScreen(),
      binding: InfoVerificationPageBindings(),
    ),
    GetPage(
      name: AppRoutes.infoCorrection,
      page: () => InfoCorrectionScreen(),
      binding: InfoCorrectionPageBindings(),
    ),
    GetPage(
      name: AppRoutes.privacyPolicy,
      page: () => PrivacyPolicyScreen(),
      binding: PrivacyPolicyPageBindings(),
    ),
    GetPage(
      name: AppRoutes.verificationCode,
      page: () => VerificationCodeScreen(),
      binding: VerificationCodePageBindings(),
    ),
    GetPage(
      name: AppRoutes.profilePicture,
      page: () => ProfilePictureScreen(),
      binding: ProfilePicturePageBindings(),
    ),
  ];
}
