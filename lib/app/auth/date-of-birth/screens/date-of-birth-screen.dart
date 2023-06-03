import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/colors/colors.dart';
import '../../../../widgets/header/header.dart';
import '../../../../widgets/input/input.dart';
import '../../../../widgets/primary-button/primary-button.dart';
import '../controllers/date-of-birth-controller.dart';

class DateOfBirthScreen extends StatelessWidget {
  DateOfBirthScreen({Key? key}) : super(key: key);
  final _dateOfBirthController = Get.put(DateOfBirthController());
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
                'Quelle est votre date de naissance?',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20.sp,
                  color: AppColors.black,
                ),
              ),
              8.h.verticalSpace,
              Text(
                'L’age doit avoir superieur ou égale à 8 ans. Indiqué l’age\nafficher sur votre CIN',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.black3,
                ),
              ),
              36.h.verticalSpace,
              Center(
                child: GestureDetector(
                  onTap: () async {
                    var datePicked = await DatePicker.showSimpleDatePicker(
                      context,
                      initialDate: DateTime(1994),
                      firstDate: DateTime(1960),
                      lastDate: DateTime(2012),
                      dateFormat: "dd-MMMM-yyyy",
                      locale: DateTimePickerLocale.fr,
                      looping: true,
                      reverse: true,
                      cancelText: 'ANNULER',
                      confirmText: 'DÉFINIR',
                    );

                    _dateOfBirthController.setDate(datePicked);
                  },
                  child: InputTextField(
                    controller:
                        _dateOfBirthController.dateOfBirthTextEditingController,
                    width: 182,
                    borderColor: AppColors.gray,
                    enabled: false,
                  ),
                ),
              ),
              36.h.verticalSpace,
              PrimaryButton(
                text: 'Suivant',
                onClick: _dateOfBirthController.handleNext,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: _dateOfBirthController.handleLogin,
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
