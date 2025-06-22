import 'package:advanced/core/theming/colors.dart';
import 'package:advanced/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final double radius;
  final Color focusBorderColor;
  final Color enableBorderColor;
  final bool? isSecure;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? contentPadding;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.radius,
    required this.focusBorderColor,
    required this.enableBorderColor,
    this.isSecure,
    this.contentPadding,
    this.textStyle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        isDense: true,
        filled: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: textFiledBorderType(radius, enableBorderColor),
        focusedBorder: textFiledBorderType(radius, focusBorderColor),
        hintStyle: TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isSecure ?? false,
      style: textStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }

  OutlineInputBorder textFiledBorderType(double radias, Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radias),
      borderSide: BorderSide(color: color, width: 1.3.w),
    );
  }
}
