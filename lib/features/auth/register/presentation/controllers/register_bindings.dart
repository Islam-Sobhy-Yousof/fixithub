

import 'package:fixithub/features/auth/register/presentation/controllers/register_controller.dart';
import 'package:get/get.dart';

class RegisterBindings extends Bindings {
  @override
  void dependencies() {
  Get.lazyPut(() => RegisterController());
  }

}