import 'package:by_by_cedit/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/image_urls/image_urls.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.onClick,
    required this.name,
  }) : super(key: key);

  final void Function() onClick;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        height: 40.h,
        width: 40.h,
        decoration: BoxDecoration(
          color: name == 'google'
              ? AppColors.pink
              : name == 'apple'
                  ? AppColors.black
                  : AppColors.blue,
          borderRadius: BorderRadius.circular(63.h),
        ),
        child: Center(
          child: Image.asset(
            name == 'google'
                ? AppImages.google
                : name == 'apple'
                    ? AppImages.apple
                    : AppImages.facebook,
            height: 12,
            width: 12,
          ),
        ),
      ),
    );
  }
}
