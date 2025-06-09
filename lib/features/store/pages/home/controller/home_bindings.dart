import 'package:fixithub/features/store/pages/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings  {
 static void initHomeBindings(){
  Get.put(HomeController());
 }
}