import 'package:fixithub/app/core/di/injection_container.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    InjectionContainer.init();
  }
}
