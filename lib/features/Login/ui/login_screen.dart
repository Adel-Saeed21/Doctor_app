// ignore_for_file: must_be_immutable

import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/style.dart';
import 'package:advanced/core/widgets/app_button.dart';
import 'package:advanced/features/Login/logic/cubit/login_cubit_cubit.dart';
import 'package:advanced/features/Login/ui/widgets/donot_have_account.dart';
import 'package:advanced/features/Login/ui/widgets/email_and_password.dart';
import 'package:advanced/features/Login/ui/widgets/login_bloc_listener.dart';
import 'package:advanced/features/Login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    const EmailAndPassword(),
                    verticalSpace(24.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(25.h),
                    AppButton(
                      buttonText: 'Login',
                      onPressed: () {
                        validateThenLogin(context);
                      },
                    ),
                    verticalSpace(16.h),
                    const TermsAndConditionsText(),
                    verticalSpace(64.h),
                    const DonotHaveAccount(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubitCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubitCubit>().emitLoginState(
        
      );
    }
  }
}
