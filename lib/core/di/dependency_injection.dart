import 'package:advanced/core/networking/api_service.dart';
import 'package:advanced/core/networking/dio_factory.dart';
import 'package:advanced/features/Login/data/repos/login_repo.dart';
import 'package:advanced/features/Login/logic/cubit/login_cubit_cubit.dart';
import 'package:advanced/features/signup/data/repo/signup_repo.dart';
import 'package:advanced/features/signup/logic/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubitCubit>(() => LoginCubitCubit(getit()));

//sign up
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));
}
