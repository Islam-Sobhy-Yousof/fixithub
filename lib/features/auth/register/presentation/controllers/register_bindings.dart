import 'package:fixithub/features/auth/domain/usecases/register_usecase.dart';
import 'package:fixithub/features/auth/register/presentation/controllers/register_controller.dart';
import 'package:get/get.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
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
