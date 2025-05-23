import 'package:fixithub/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  int currentPageIndex = 0;
  final pageController = PageController();

  void nextPage() {
    if (currentPageIndex == 2) {
      Get.offNamed(
        Routes.login,
      );
    } else {
      int toPage = ++currentPageIndex;
      pageController.jumpToPage(toPage);
    }
  }

  void updatePageIndicator(int index) {
    currentPageIndex = index;
  }

  void dotNavigationClick(int index) {
    currentPageIndex = index;
    pageController.jumpToPage(currentPageIndex);
  }

  void skip() {
    Get.offNamed(
      Routes.login,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
