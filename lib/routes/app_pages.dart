import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/styles_manager.dart';
import 'package:fixithub/features/auth/presentation/login/view/login_view.dart';
import 'package:fixithub/features/on_boarding/view/on_boarding_view.dart';
import 'package:fixithub/features/on_boarding/view_model/on_boarding_controller.dart';
import 'package:fixithub/features/splash/view/splash_view.dart';
import 'package:fixithub/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Routes.login,
      page: () {
        // initLoginModule();

        return const LoginView();
      },
    ),
    GetPage(
      name: Routes.onBoarding,
      page: () {
        Get.put(OnBoardingController());
        return OnBoardingView();
      },
    ),
  ];

  static Route<dynamic> unknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text(StringsManager.noRouteFound)),
        body: Center(
            child: Text(
          StringsManager.noRouteFound,
          style: getBoldStyle(
            fontSize: FontSize.s16,
          ),
        )),
      ),
    );
  }
}
