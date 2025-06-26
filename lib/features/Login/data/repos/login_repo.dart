import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/core/networking/api_service.dart';
import 'package:advanced/features/Login/data/models/login_request_body.dart';
import 'package:advanced/features/Login/data/models/login_response_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseBody>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return Success(response);
    } catch (error) {
      return Failure(error.toString());
    }
  }
}
