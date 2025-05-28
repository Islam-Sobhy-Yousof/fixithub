

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
static MainController get instance => Get.find();
  final currentIndex = 0.obs;

  final screens = [
    Container(color: Colors.amber,),
    Container(color: Colors.deepOrange,),
    Container(color: Colors.deepPurple,),
    Container(color: Colors.blue,),
  ].obs;

  void changeSelectedIndex (int index) {
currentIndex.value = index;
  }
}