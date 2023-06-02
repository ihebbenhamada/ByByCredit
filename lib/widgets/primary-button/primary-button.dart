import 'package:by_by_cedit/config/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onClick,
    this.enabled,
    this.isOutlined,
  }) : super(key: key);

  final String text;
  final void Function() onClick;
  final bool? enabled;
  final bool? isOutlined;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isOutlined!=null ? AppColors.white:AppColors.blue,
          borderRadius: BorderRadius.circular(12),
          border: isOutlined!=null ? Border.all(color: AppColors.blue):null
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              color: isOutlined != null ? AppColors.blue: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
