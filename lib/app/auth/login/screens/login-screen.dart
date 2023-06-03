import 'package:by_by_cedit/widgets/primary-button/primary-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/colors/colors.dart';
import '../../../../config/image_urls/image_urls.dart';
import '../../../../widgets/input/input.dart';
import '../../../../widgets/social-button/social-button.dart';
import '../controllers/login-controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              65.h.verticalSpace,
              Center(
                child: Image.asset(
                  AppImages.logo,
                  height: 200.h,
                  width: 200.h,
                ),
              ),
              40.h.verticalSpace,
              Text(
                'Bienvenue',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24.sp,
                  color: AppColors.black5,
                ),
              ),
              24.h.verticalSpace,
              InputTextField(
                controller: _loginController.emailTextEditingController,
                width: double.infinity,
                borderColor: AppColors.gray,
                hintText: 'Adresse e-mail',
              ),
              16.h.verticalSpace,
              GetBuilder<LoginController>(
                builder: (_) => InputTextField(
                  controller: _loginController.passwordTextEditingController,
                  width: double.infinity,
                  borderColor: AppColors.gray,
                  hintText: 'Mot de passe',
                  obscureText: _loginController.isPasswordVisible,
                  suffixIcon: GestureDetector(
                    onTap: _loginController.showHidePassword,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Image.asset(
                        AppImages.eyeSlash,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ),
                ),
              ),
              16.h.verticalSpace,
              Text(
                'Mot de passe oublié ?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  color: AppColors.blue,
                ),
              ),
              24.h.verticalSpace,
              PrimaryButton(
                text: 'Se connecter',
                onClick: _loginController.handleLogin,
              ),
              16.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'la premier fois? ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColors.black3,
                    ),
                  ),
                  GestureDetector(
                    onTap: _loginController.handleCreateAccount,
                    child: Text(
                      'Creer un compte',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: AppColors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              24.h.verticalSpace,
              Container(
                height: .5,
                width: double.infinity,
                color: AppColors.gray1,
              ),
              24.h.verticalSpace,
              Center(
                child: Text(
                  'Ou connecté avec',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: AppColors.black3,
                  ),
                ),
              ),
              16.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(onClick: () {}, name: 'google'),
                  12.horizontalSpace,
                  SocialButton(onClick: () {}, name: 'apple'),
                  12.horizontalSpace,
                  SocialButton(onClick: () {}, name: 'facebook'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
