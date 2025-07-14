import 'package:advanced/core/theming/style.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font14GreyRegular.copyWith(fontSize: 13),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font14DarkBlueMedium.copyWith(fontSize: 13),
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font14GreyRegular.copyWith(
              height: 1.5,
              fontSize: 13,
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font14DarkBlueMedium.copyWith(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
