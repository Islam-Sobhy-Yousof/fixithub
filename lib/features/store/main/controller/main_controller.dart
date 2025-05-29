import 'package:fixithub/features/store/pages/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  static MainController get instance => Get.find();
  final currentIndex = 0.obs;

  final screens = [
    HomeView(),
    Container(
      color: Colors.deepOrange,
    ),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.blue,
    ),
  ].obs;

  void changeSelectedIndex(int index) {
    currentIndex.value = index;
  }
}
