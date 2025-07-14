import 'package:advanced/core/networking/api_result.dart';
import 'package:advanced/core/networking/api_service.dart';
import 'package:advanced/features/signup/data/model/signup_request_body.dart';
import 'package:advanced/features/signup/data/model/signup_response.dart';

class SignupRepo {
  ApiService _apiService;
  SignupRepo(this._apiService);
  Future<ApiResult<SignupResponse>> singup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return Success(response);
    } catch (err) {
      return Failure(err.toString());
    }
  }
}
