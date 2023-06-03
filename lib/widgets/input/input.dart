import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/colors/colors.dart';

enum InputType { numeric, alphabetic, alphaNumeric }

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    this.autofocus = false,
    this.obscureText = false,
    required this.controller,
    this.hintText = '',
    this.onChanged,
    this.onSaved,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTap,
    this.maxLines = 1,
    this.inputType,
    this.focusNode,
    this.nextFocusNode,
    this.keyboardType = TextInputType.multiline,
    this.validator,
    this.fillColor = Colors.white,
    this.filled = true,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    this.textInputAction = TextInputAction.next,
    this.inputFormatters,
    this.maxLength,
    this.autovalidateMode,
    this.initialValue,
    this.textCapitalization = TextCapitalization.none,
    this.enabled,
    this.paddingRight = 0,
    required this.width,
    required this.borderColor,
    this.error,
    this.errorText,
  }) : super(key: key);

  final double width;
  final Color borderColor;
  final bool autofocus;
  final TextEditingController controller;
  final String hintText;
  final String? errorText;
  final bool? enabled;
  final bool? error;
  final void Function()? onTap;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final int maxLines;
  final double paddingRight;
  final InputType? inputType;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Color fillColor;
  final bool filled;
  final int? maxLength;
  final bool? maxLengthEnforced = true;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? title;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: borderColor,
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
          child: Center(
            child: TextFormField(
              key: key,
              autofocus: autofocus,
              obscureText: obscureText,
              controller: controller,
              keyboardType: keyboardType,
              maxLines: maxLines,
              textAlignVertical: TextAlignVertical.center,
              onChanged: onChanged,
              onSaved: onSaved,
              initialValue: initialValue,
              maxLength: maxLength,
              onEditingComplete: onEditingComplete,
              onFieldSubmitted: onFieldSubmitted,
              inputFormatters: inputFormatters,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
              cursorColor: AppColors.black3,
              decoration: InputDecoration(
                isDense: true,
                counterText: '',
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black4,
                ),
                contentPadding: const EdgeInsets.all(16),
                suffixIcon: suffixIcon,
                suffixIconConstraints: const BoxConstraints(),
                prefixIcon: prefixIcon,
                prefixIconConstraints: const BoxConstraints(),
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              autocorrect: false,
              enableSuggestions: false,
              enabled: enabled,
              textInputAction: textInputAction,
              autovalidateMode: autovalidateMode,
              validator: validator,
              enableInteractiveSelection: true,
              focusNode: focusNode,
              textCapitalization: textCapitalization,
            ),
          ),
        ),
        /*4.h.verticalSpace,
        error != null && error!
            ? Text(
                errorText!,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.23.h,
                  color: AppColors.red,
                ),
              )
            : Text(
                "",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.23.h,
                  color: AppColors.red,
                ),
              ),*/
      ],
    );
  }
}
