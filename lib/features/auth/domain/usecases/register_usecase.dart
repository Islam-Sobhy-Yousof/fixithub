import 'package:dartz/dartz.dart';
import 'package:fixithub/app/core/network/error/failure.dart';
import 'package:fixithub/app/core/usecase/base_usecase.dart';
import 'package:fixithub/features/auth/data/requests/auth_requests.dart';
import 'package:fixithub/features/auth/domain/models/registeration_model.dart';
import 'package:fixithub/features/auth/domain/repository/auth_repository.dart';

class RegisterUsecase
    implements BaseUsecase<RegisterationUsecaseInput, RegisterationModel> {
  final AuthRepository _authRepository;

  RegisterUsecase({required AuthRepository authRepository})
      : _authRepository = authRepository;
  @override
  Future<Either<Failure, RegisterationModel>> call(
      {required RegisterationUsecaseInput input}) async {
    return await _authRepository.register(
      input: RegisterRequest(
        username: input.username,
        email: input.email,
        password: input.password,
        role: input.role,
      ),
    );
  }
}

class RegisterationUsecaseInput {
  final String username;
  final String email;
  final String password;
  final String role;

  RegisterationUsecaseInput(
      {required this.username,
      required this.email,
      required this.password,
      required this.role});
}
