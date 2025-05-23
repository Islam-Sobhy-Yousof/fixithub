import 'package:fixithub/app/app.dart';
import 'package:fixithub/app/core/di/injection_container.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await InjectionContainer.init();
  runApp(FixItHub());
}
