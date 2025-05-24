import 'dart:async';

import 'package:fixithub/app/app_constants.dart';
import 'package:fixithub/app/core/local_storage/local_storage_helper.dart';
import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/styles_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/widgets/fixithub_text_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _moveToCenter = false;
  bool isDark = false;
  final LocalStorageHelper _localStorageHelper =
      Get.find<LocalStorageHelper>();

  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer(
      Duration(
        seconds: AppConstants.splashDelay,
      ),
      _goNext,
    );
    Future.delayed(
        const Duration(milliseconds: AppConstants.splashTriggerAnimationDelay),
        () {
      setState(() {
        _moveToCenter = true;
      });
    });
  }

  void _goNext() async {
    final bool didSeeOnBoarding = await _localStorageHelper.didSeeOnBoarding();

    if (didSeeOnBoarding) {
      Get.offAllNamed(
        Routes.login,
      );

      return;
    }
    //user didn't see the onboarding yet but now it's presented to him
    _localStorageHelper.markOnboardingAsSeen();
    Get.offAllNamed(
      Routes.onBoarding,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isDark = HelperFunctions.isDarkMode(context: context);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = HelperFunctions.screenHeight();

    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration:
                const Duration(milliseconds: AppConstants.splashAnimationDelay),
            curve: Curves.easeInOut,
            top: _moveToCenter
                ? screenHeight / AppSize.s2 - AppSize.s100
                : screenHeight,
            left: AppSize.s0,
            right: AppSize.s0,
            child: Center(
                child:  FixithubTextLogo(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
