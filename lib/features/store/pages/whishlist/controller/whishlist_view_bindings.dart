import 'package:fixithub/features/store/pages/whishlist/controller/whishlist_view_controller.dart';
import 'package:get/get.dart';

class WhishlistViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(WhishlistViewController());
  }
}