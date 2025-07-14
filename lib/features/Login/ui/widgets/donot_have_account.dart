import 'package:advanced/core/helpers/extensions.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/theming/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DonotHaveAccount extends StatelessWidget {
  const DonotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account?",
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacmentNamed(Routes.signUp);
                  },
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
