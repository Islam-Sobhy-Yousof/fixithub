import 'package:fixithub/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:fixithub/features/auth/data/repository/auth_repository_impl.dart';
import 'package:fixithub/features/auth/domain/repository/auth_repository.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {
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
  }

}