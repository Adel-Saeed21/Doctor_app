import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit_state.freezed.dart';

@freezed
class LoginCubitState<T> with _$LoginCubitState<T> {
  const factory LoginCubitState.initial() = _LoginInitial;
  const factory LoginCubitState.loading() = LoginLoading;
  const factory LoginCubitState.success(T data) = LoginSuccess<T>;
  const factory LoginCubitState.error({required String error}) = LoginError;
}
