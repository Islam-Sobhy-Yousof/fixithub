import 'package:fixithub/app/core/resources/theme_manager.dart';
import 'package:fixithub/routes/app_pages.dart';
import 'package:fixithub/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class FixItHub extends StatelessWidget {
  const FixItHub({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: Routes.splash,
      getPages: AppPages.pages,
      
    );
  }
}
