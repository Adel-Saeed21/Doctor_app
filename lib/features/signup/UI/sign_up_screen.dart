import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/style.dart';
import 'package:advanced/core/widgets/app_button.dart';
import 'package:advanced/features/Login/ui/widgets/terms_and_conditions.dart';
import 'package:advanced/features/signup/UI/widgets/already_have_an_account.dart';
import 'package:advanced/features/signup/UI/widgets/signup_bloc_listener.dart';
import 'package:advanced/features/signup/UI/widgets/signup_form.dart';
import 'package:advanced/features/signup/logic/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                Text(
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}