import 'package:advanced/core/theming/colors.dart';
import 'package:advanced/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.primaryBlue,
  );

  static TextStyle font10Gery = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.gray,
  );

  static TextStyle font16whiteSemibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.primaryBlue,
    fontSize: 24.sp,
  );
  static TextStyle font14GreyRegular = const TextStyle(
    fontSize: 14,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14LightGreyRegular = const TextStyle(
    fontSize: 14,
    color: ColorsManager.lightGray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14DarkBlueMedium = const TextStyle(
    fontSize: 14,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font13BlueRegular = const TextStyle(
    fontSize: 13,
    color: ColorsManager.primaryBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16WhiteSemiBold = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font13DarkBlueRegular = const TextStyle(
    fontSize: 13,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13BlueSemiBold = const TextStyle(
    fontSize: 13,
    color: ColorsManager.primaryBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
   static TextStyle font15DarkBlueMedium = const TextStyle(
    fontSize: 15,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14BlueSemiBold = const TextStyle(
    fontSize: 14,
    color: ColorsManager.primaryBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
}
