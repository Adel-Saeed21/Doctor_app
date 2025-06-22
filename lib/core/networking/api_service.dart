import 'package:advanced/core/networking/api_const.dart';
import 'package:advanced/features/Login/data/models/login_request_body.dart';
import 'package:advanced/features/Login/data/models/login_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConst.login)
  Future<LoginResponseBody> login(
    
    @Body() LoginRequestBody loginRequestBody);
}
