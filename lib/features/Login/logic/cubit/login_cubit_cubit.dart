import 'package:advanced/features/Login/data/models/login_request_body.dart';
import 'package:advanced/features/Login/data/repos/login_repo.dart';
import 'package:advanced/features/Login/logic/cubit/login_cubit_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepo _loginRepo;
  LoginCubitCubit(this._loginRepo) : super(const LoginInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (loginResponse) {
        emit(LoginSuccess(loginResponse));
      },
      failure: (mess) {
        emit(LoginError(errorMessage: mess));
      },
    );
  }
}
