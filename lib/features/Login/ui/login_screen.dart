import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/colors.dart';
import 'package:advanced/core/theming/style.dart';
import 'package:advanced/core/widgets/app_button.dart';
import 'package:advanced/core/widgets/app_text_form_field.dart';
import 'package:advanced/features/Login/ui/widgets/already_have_account.dart';
import 'package:advanced/features/Login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpace(8.h),
                Text(
                  "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36.h),
                Column(
                  children: [
                    AppTextFormField(
                      hintText: 'Email',
                      radius: 16,
                      backgroundColor: ColorsManager.moreLightGray,
                      enableBorderColor: ColorsManager.lightGray,
                      focusBorderColor: ColorsManager.primaryBlue,
                      textStyle: TextStyles.font14DarkBlueMedium,
                    ),
                    verticalSpace(18.h),
                    AppTextFormField(
                      hintText: 'Password',
                      radius: 16,
                      backgroundColor: ColorsManager.moreLightGray,
                      enableBorderColor: ColorsManager.lightGray,
                      focusBorderColor: ColorsManager.primaryBlue,
                      textStyle: TextStyles.font14DarkBlueMedium,
                      isSecure: isObsecure,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        child: Icon(
                          isObsecure
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    verticalSpace(24.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(25.h),
                    AppButton(buttonText: 'Login', onPressed: () {}),
                    verticalSpace(16.h),
                    const TermsAndConditionsText(),
                    verticalSpace(64.h),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
