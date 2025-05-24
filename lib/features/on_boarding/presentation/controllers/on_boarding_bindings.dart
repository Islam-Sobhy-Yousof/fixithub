import 'package:fixithub/features/on_boarding/presentation/controllers/on_boarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingBindings extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => OnBoardingController());
  }

}