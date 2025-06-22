import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/features/Login/ui/login_screen.dart';
import 'package:advanced/features/on_boarding/onboardingScreen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      
      default:
        return MaterialPageRoute(builder: (_) =>const Scaffold());
    }
  }
}
