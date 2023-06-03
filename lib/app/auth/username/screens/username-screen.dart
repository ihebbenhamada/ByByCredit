import 'package:by_by_cedit/widgets/header/header.dart';
import 'package:by_by_cedit/widgets/primary-button/primary-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/colors/colors.dart';
import '../../../../widgets/input/input.dart';
import '../controllers/username-controller.dart';

class UserNameScreen extends StatelessWidget {
  UserNameScreen({Key? key}) : super(key: key);
  final _userNameController = Get.put(UserNameController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(title: ''),
              25.h.verticalSpace,
              Text(
                'Comment vous appelez ?',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20.sp,
                  color: AppColors.black,
                ),
              ),
              8.h.verticalSpace,
              Text(
                'Entez le nom que vous verrier sur votre carte\nd’identité (cin)',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.black3,
                ),
              ),
              Text(
                'l’utilisateur doit avoir age ≥ 18 ans',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.pink,
                ),
              ),
              36.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nom',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          color: AppColors.black1,
                        ),
                      ),
                      8.h.verticalSpace,
                      InputTextField(
                        controller:
                            _userNameController.lastNameTextEditingController,
                        width: MediaQuery.of(context).size.width * 0.41,
                        borderColor: AppColors.gray,
                        hintText: 'Nom',
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prénom',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          color: AppColors.black1,
                        ),
                      ),
                      8.h.verticalSpace,
                      InputTextField(
                        controller:
                            _userNameController.firstNameTextEditingController,
                        width: MediaQuery.of(context).size.width * 0.41,
                        borderColor: AppColors.gray,
                        hintText: 'Prénom',
                      ),
                    ],
                  ),
                ],
              ),
              36.h.verticalSpace,
              PrimaryButton(
                text: 'Suivant',
                onClick: _userNameController.handleNext,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: _userNameController.handleLogin,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Vous avez deja un compte? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppColors.black3,
                          ),
                        ),
                        Text(
                          'Se connecter',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            color: AppColors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
