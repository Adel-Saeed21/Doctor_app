import 'package:advanced/features/Login/data/models/login_request_body.dart';
import 'package:advanced/features/Login/data/repos/login_repo.dart';
import 'package:advanced/features/Login/logic/cubit/login_cubit_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepo _loginRepo;
  LoginCubitCubit(this._loginRepo) : super(const LoginCubitState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey();

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginCubitState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginCubitState.success(loginResponse));
      },
      failure: (mess) {
        emit(LoginCubitState.error(error: mess));
      },
    );
  }
}
