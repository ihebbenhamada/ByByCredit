import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/colors.dart';

class GenderRadio extends StatefulWidget {
  const GenderRadio({
    Key? key,
  }) : super(key: key);

  @override
  State<GenderRadio> createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadio> {
  String genderValue = "Femme";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() {
              genderValue = 'Femme';
            });
          },
          child: SizedBox(
            height: 27.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Femme',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: AppColors.black,
                  ),
                ),
                genderValue == 'Femme' ? activeRadio() : inactiveRadio()
              ],
            ),
          ),
        ),
        10.h.verticalSpace,
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() {
              genderValue = 'Homme';
            });
          },
          child: SizedBox(
            height: 27.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Homme',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: AppColors.black,
                  ),
                ),
                genderValue == 'Homme' ? activeRadio() : inactiveRadio()
              ],
            ),
          ),
        ),
        10.h.verticalSpace,
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() {
              genderValue = 'Personalisé';
            });
          },
          child: SizedBox(
            height: 27.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Personalisé',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: AppColors.black,
                  ),
                ),
                genderValue == 'Personalisé' ? activeRadio() : inactiveRadio()
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget activeRadio() {
    return Container(
      height: 16.h,
      width: 16.h,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(16.h),
      ),
      child: Center(
        child: Container(
          height: 6.h,
          width: 6.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(6.h),
          ),
        ),
      ),
    );
  }

  Widget inactiveRadio() {
    return Container(
      height: 16.h,
      width: 16.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.h),
          border: Border.all(color: AppColors.gray, width: 1)),
    );
  }
}
