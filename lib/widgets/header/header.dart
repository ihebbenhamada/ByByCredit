import 'package:by_by_cedit/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../config/image_urls/image_urls.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 14.sp,
                color: AppColors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  AppImages.arrowBack,
                  height: 20.h,
                  width: 20.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
