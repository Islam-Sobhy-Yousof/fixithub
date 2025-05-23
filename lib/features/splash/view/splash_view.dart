import 'dart:async';

import 'package:fixithub/app/app_constants.dart';
import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/styles_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _moveToCenter = false;
  bool isDark = false;

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

  void _goNext() {

  
    Get.offNamed(
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
                child: Text(
              StringsManager.logoString,
              style: getBoldStyle(
                fontSize: FontSize.s60,
                color: isDark ? ColorsManager.white : ColorsManager.primary,
              ),
            )),
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
