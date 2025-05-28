import 'package:fixithub/app/app.dart';
import 'package:fixithub/app/core/di/injection_container.dart';
import 'package:fixithub/app/core/local_storage/local_storage_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Initialize the app-level dependencies 
  await InjectionContainer.init();
  // await Get.find<LocalStorageHelper>().markOnboardingAsNotSeen();
  runApp(FixItHub());
}
