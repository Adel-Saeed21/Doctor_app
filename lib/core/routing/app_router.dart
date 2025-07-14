import 'package:advanced/core/di/dependency_injection.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/features/Login/logic/cubit/login_cubit_cubit.dart';
import 'package:advanced/features/Login/ui/login_screen.dart';
import 'package:advanced/features/home/UI/home_screen.dart';
import 'package:advanced/features/on_boarding/onboardingScreen.dart';
import 'package:advanced/features/signup/UI/sign_up_screen.dart';
import 'package:advanced/features/signup/logic/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const Onboardingscreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getit<LoginCubitCubit>(),
                child: const LoginScreen(),
              ),
        );

      case Routes.signUp:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getit<SignupCubit>(),
                child: const SignupScreen(),
              ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
