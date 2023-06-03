import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/colors/colors.dart';
import '../../../../widgets/gender-radio/gender-radio.dart';
import '../../../../widgets/header/header.dart';
import '../../../../widgets/primary-button/primary-button.dart';
import '../controllers/gender-controller.dart';

class GenderScreen extends StatelessWidget {
  GenderScreen({Key? key}) : super(key: key);
  final _genderController = Get.put(GenderController());
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
                'Quelle est votre genre ?',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20.sp,
                  color: AppColors.black,
                ),
              ),
              8.h.verticalSpace,
              Text(
                'Indiqué votre identité physique',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.black3,
                ),
              ),
              36.h.verticalSpace,
              const GenderRadio(),
              36.h.verticalSpace,
              PrimaryButton(
                text: 'Suivant',
                onClick: _genderController.handleNext,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: _genderController.handleLogin,
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
