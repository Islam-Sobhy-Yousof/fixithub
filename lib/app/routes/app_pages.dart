import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/styles_manager.dart';
import 'package:fixithub/features/auth/forget_password/view/forget_password_view.dart';
import 'package:fixithub/features/auth/forget_password/view/reset_password_view.dart';
import 'package:fixithub/features/auth/login/presentation/controllers/login_bindings.dart';
import 'package:fixithub/features/auth/login/presentation/view/login_view.dart';
import 'package:fixithub/features/auth/register/presentation/controllers/register_bindings.dart';
import 'package:fixithub/features/auth/register/presentation/view/register_view.dart';
import 'package:fixithub/features/auth/resend_top/view/resned_otp_view.dart';
import 'package:fixithub/features/auth/verify_account/presentation/view/verify_account.dart';
import 'package:fixithub/features/on_boarding/presentation/controllers/on_boarding_bindings.dart';
import 'package:fixithub/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fixithub/features/splash/presentation/view/splash_view.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/features/store/main/controller/main_bindings.dart';
import 'package:fixithub/features/store/main/view/main_view.dart';
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
        return const LoginView();
      },
      binding: LoginBindings(),
    ),
     GetPage(
      name: Routes.forgotPassword,
      page: () {
        return const ForgetPasswordView();
      },
      binding: LoginBindings(),
    ),
      GetPage(
      name: Routes.resetPassword,
      page: () {
        return const ResetPasswordView();
      },
      binding: LoginBindings(),
    ),
     GetPage(
      name: Routes.resendOTP,
      page: () {
        return const ResnedOtpView();
      },
      binding: LoginBindings(),
    ),
     GetPage(
      name: Routes.register,
      page: () {
        return const RegisterView();
      },
      binding: RegisterBindings(),
    ),
      GetPage(
      name: Routes.verifyAccount,
      page: () {
        return const VerifyAccount();
      },
     
    ),
    GetPage(
      name: Routes.onBoarding,
      page: () {
        return OnBoardingView();
      },
      binding: OnBoardingBindings(),
    ),
      GetPage(
      name: Routes.main,
      page: () {
        return MainView();
      },
      binding: MainBindings(),
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
