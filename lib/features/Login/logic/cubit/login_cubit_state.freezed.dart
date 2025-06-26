// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginCubitState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCubitState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginCubitState<$T>()';
}


}

/// @nodoc
class $LoginCubitStateCopyWith<T,$Res>  {
$LoginCubitStateCopyWith(LoginCubitState<T> _, $Res Function(LoginCubitState<T>) __);
}


/// @nodoc


class _LoginInitial<T> implements LoginCubitState<T> {
  const _LoginInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginCubitState<$T>.initial()';
}


}




/// @nodoc


class LoginLoading<T> implements LoginCubitState<T> {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginCubitState<$T>.loading()';
}


}




/// @nodoc


class LoginSuccess<T> implements LoginCubitState<T> {
  const LoginSuccess(this.data);
  

 final  T data;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<T, LoginSuccess<T>> get copyWith => _$LoginSuccessCopyWithImpl<T, LoginSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LoginCubitState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<T,$Res> implements $LoginCubitStateCopyWith<T, $Res> {
  factory $LoginSuccessCopyWith(LoginSuccess<T> value, $Res Function(LoginSuccess<T>) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<T,$Res>
    implements $LoginSuccessCopyWith<T, $Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess<T> _self;
  final $Res Function(LoginSuccess<T>) _then;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LoginSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LoginError<T> implements LoginCubitState<T> {
  const LoginError({required this.error});
  

 final  String error;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginErrorCopyWith<T, LoginError<T>> get copyWith => _$LoginErrorCopyWithImpl<T, LoginError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LoginCubitState<$T>.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoginErrorCopyWith<T,$Res> implements $LoginCubitStateCopyWith<T, $Res> {
  factory $LoginErrorCopyWith(LoginError<T> value, $Res Function(LoginError<T>) _then) = _$LoginErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$LoginErrorCopyWithImpl<T,$Res>
    implements $LoginErrorCopyWith<T, $Res> {
  _$LoginErrorCopyWithImpl(this._self, this._then);

  final LoginError<T> _self;
  final $Res Function(LoginError<T>) _then;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoginError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
