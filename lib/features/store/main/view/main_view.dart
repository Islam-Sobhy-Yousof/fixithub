import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/features/store/main/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  final controller = MainController.instance;
  @override
  Widget build(BuildContext context) {
    final _isDarkMod = HelperFunctions.isDarkMode(context: context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor:
              _isDarkMod ? ColorsManager.primary : ColorsManager.white,
          height: AppSize.s60,
          elevation: AppSize.s0,
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: controller.changeSelectedIndex,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Iconsax.home,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.heart,
              ),
              label: 'WhisList',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.shopping_bag,
              ),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.user,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: controller.screens,
        ),
      ),
    );
  }
}
