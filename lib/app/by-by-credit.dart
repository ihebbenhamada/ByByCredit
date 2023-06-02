import 'package:by_by_cedit/app/auth/login/screens/login-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../config/binding/binding.dart';
import '../config/translation/translation.dart';
import '../routes/app_pages.dart';

class ByByCredit extends StatelessWidget {
  const ByByCredit({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          translations: Translation(),
          theme: ThemeData(fontFamily: 'Inter'),
          locale: const Locale('fr', 'FR'),
          initialBinding: Binding(),
          smartManagement: SmartManagement.keepFactory,
          home: LoginScreen(),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
