import 'package:by_by_cedit/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'From',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: AppColors.gray4,
          ),
        ),
        Text(
          'Bye Bye Credit',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            color: AppColors.blue,
          ),
        ),
      ],
    );
  }
}
