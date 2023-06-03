import 'package:by_by_cedit/config/image_urls/image_urls.dart';
import 'package:by_by_cedit/widgets/primary-button/primary-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/colors/colors.dart';
import '../../../../widgets/footer/footer.dart';
import '../../../../widgets/social-button/social-button.dart';
import '../controllers/main-login-controller.dart';

class MainLoginScreen extends StatelessWidget {
  MainLoginScreen({Key? key}) : super(key: key);
  final _mainLoginController = Get.put(MainLoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              63.h.verticalSpace,
              Image.asset(
                AppImages.logo,
                height: 54.h,
                width: 54.h,
              ),
              28.h.verticalSpace,
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AppImages.profilePic,
                    height: 143.h,
                    width: 143.h,
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      height: 22.h,
                      width: 22.h,
                      decoration: BoxDecoration(
                        color: AppColors.red,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(width: 1, color: AppColors.white),
                      ),
                      child: Center(
                        child: Text(
                          '7',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              28.h.verticalSpace,
              Text(
                'DaDa Triki',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                  color: AppColors.black5,
                ),
              ),
              42.h.verticalSpace,
              PrimaryButton(
                text: 'Se Connecter',
                onClick: _mainLoginController.login,
              ),
              16.h.verticalSpace,
              Text(
                'Ou',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.black3,
                ),
              ),
              16.h.verticalSpace,
              GestureDetector(
                onTap: _mainLoginController.handleCreateAccount,
                child: Text(
                  'Creer un compte',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: AppColors.blue,
                  ),
                ),
              ),
              24.h.verticalSpace,
              Container(
                height: .5,
                width: double.infinity,
                color: AppColors.gray1,
              ),
              24.h.verticalSpace,
              Text(
                'Ou bien connecter avec',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.black3,
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
      floatingActionButton: SizedBox(
        height: 40.h,
        child: const Footer(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
