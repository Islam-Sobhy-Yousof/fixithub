import 'package:dartz/dartz.dart';
import 'package:fixithub/app/core/network/error/exception/exceptions.dart';
import 'package:fixithub/app/core/network/error/failure.dart';
import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:fixithub/features/auth/data/mappers/auth_mappers.dart';
import 'package:fixithub/features/auth/data/requests/auth_requests.dart';
import 'package:fixithub/features/auth/domain/models/registeration_model.dart';
import 'package:fixithub/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl({required AuthRemoteDataSource authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource;
  @override
  Future<Either<Failure, RegisterationModel>> register(
      {required RegisterRequest input}) async {
    try {
      //TODO: implement the connection checking functionality

      final response = await _authRemoteDataSource.register(input: input);
      print('islam now at repo and res is : ${response}');
      return Right(response.toDomain());
    } on ServerException catch (error) {
      return Left(
        Failure(
          error: error.errorModel.error ?? StringsManager.defaultFailureMessage,
        ),
      );
    } catch (error) {
      return Left(Failure(error: StringsManager.defaultFailureMessage));
    }
  }
}
