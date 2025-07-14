import 'package:advanced/core/helpers/app_regex.dart';
import 'package:advanced/core/helpers/spacing.dart';
import 'package:advanced/core/theming/colors.dart';
import 'package:advanced/core/theming/style.dart';
import 'package:advanced/core/widgets/app_text_form_field.dart';
import 'package:advanced/features/Login/logic/cubit/login_cubit_cubit.dart';
import 'package:advanced/features/Login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObsceureText = false;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubitCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubitCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter valid email';
              }
            },
            controller: context.read<LoginCubitCubit>().emailController,
            hintText: 'Email',
            radius: 16,
            backgroundColor: ColorsManager.moreLightGray,
            enableBorderColor: ColorsManager.lightGray,
            focusBorderColor: ColorsManager.primaryBlue,
            textStyle: TextStyles.font14DarkBlueMedium,
          ),
          verticalSpace(18.h),
          AppTextFormField(
            controller: context.read<LoginCubitCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter valid Password';
              }
            },
            hintText: 'Password',
            radius: 16,
            backgroundColor: ColorsManager.moreLightGray,
            enableBorderColor: ColorsManager.lightGray,
            focusBorderColor: ColorsManager.primaryBlue,
            textStyle: TextStyles.font14DarkBlueMedium,
            isSecure: isObsceureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsceureText = !isObsceureText;
                });
              },
              child: Icon(
                isObsceureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(24.h),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialChar: hasSpecialChar,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
