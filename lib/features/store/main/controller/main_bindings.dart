import 'package:fixithub/features/store/main/controller/main_controller.dart';
import 'package:fixithub/features/store/pages/home/controller/home_bindings.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    HomeBindings.initHomeBindings();
    Get.put(MainController());
  }

}