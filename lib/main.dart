import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_storage/get_storage.dart';

import 'app/by-by-credit.dart';
import 'config/colors/colors.dart';
import 'config/custom_loading_animation.dart';
import 'config/notification/notification.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureGlobalLoader();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  /// INITIALIZE FIREBASE
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// INITIALIZE STORAGE
  await GetStorage.init();
  /// CONFIGURE NOTIFICATIONS
  notification();

  /// MAIN FUNCTION
  runApp(const ByByCredit());
}

void configureGlobalLoader() {
  EasyLoading.instance
    ..animationStyle = EasyLoadingAnimationStyle.opacity
    ..displayDuration = const Duration(milliseconds: 5000)
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..indicatorColor = AppColors.white
    ..progressColor = Colors.transparent
    ..backgroundColor = AppColors.blue
    ..maskType = EasyLoadingMaskType.black
    ..textColor = AppColors.blue
    ..textStyle = const TextStyle(fontSize: 14, color: AppColors.white)
    ..userInteractions = false
    ..customAnimation = CustomAnimation();
}
