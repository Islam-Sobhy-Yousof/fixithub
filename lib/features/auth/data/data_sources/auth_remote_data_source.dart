import 'package:fixithub/app/core/network/api/api_consumer.dart';
import 'package:fixithub/app/core/network/api/api_routes.dart';
import 'package:fixithub/features/auth/data/requests/auth_requests.dart';
import 'package:fixithub/features/auth/data/responses/auth_responses.dart';

abstract class AuthRemoteDataSource {
  Future<RegisterResponses> register({required RegisterRequest input});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiConsumer _apiConsumer;

  AuthRemoteDataSourceImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;
  @override
  Future<RegisterResponses> register({required RegisterRequest input}) async {

    final response =
        await _apiConsumer.post(ApiRoutes.register, data: input.toJson()); print('islam now at auth remote data soucresx and response is ${response}');
final ret = RegisterResponses.fromJson(response);
print('islam now afert ret and ret is :  ${ret}');
    return ret ;
  }
}
