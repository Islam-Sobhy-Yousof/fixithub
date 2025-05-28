import 'package:dartz/dartz.dart';
import 'package:fixithub/app/core/network/error/failure.dart';

abstract class BaseUsecase<Input,Output> {

  Future<Either<Failure,Output>> call({required Input input});
}