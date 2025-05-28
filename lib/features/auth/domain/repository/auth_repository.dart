import 'package:dartz/dartz.dart';
import 'package:fixithub/app/core/network/error/failure.dart';
import 'package:fixithub/features/auth/data/requests/auth_requests.dart';
import 'package:fixithub/features/auth/domain/models/registeration_model.dart';

abstract class AuthRepository {
  Future<Either<Failure,RegisterationModel>> register({required RegisterRequest input});
}