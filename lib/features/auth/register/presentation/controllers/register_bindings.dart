import 'package:fixithub/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:fixithub/features/auth/data/repository/auth_repository_impl.dart';
import 'package:fixithub/features/auth/domain/repository/auth_repository.dart';
import 'package:fixithub/features/auth/domain/usecases/register_usecase.dart';
import 'package:fixithub/features/auth/register/presentation/controllers/register_controller.dart';
import 'package:get/get.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
        apiConsumer: Get.find(),
      ),
    );

    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        authRemoteDataSource: Get.find(),
      ),
    );
    Get.lazyPut<RegisterUsecase>(
      () => RegisterUsecase(
        authRepository: Get.find(),
      ),
    );
    Get.lazyPut<RegisterController>(
      () => RegisterController(
        registerUsecase: Get.find(),
      ),
    );
  }
}
