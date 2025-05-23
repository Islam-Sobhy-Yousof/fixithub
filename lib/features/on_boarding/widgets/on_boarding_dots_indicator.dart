import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/device/device_utility.dart';
import 'package:fixithub/features/on_boarding/view_model/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotsIndicator extends StatelessWidget {
  const OnBoardingDotsIndicator({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceUtility.getBottomNavigationBarHeight() + AppSize.s24,
      left: AppSize.s24,
      child: SmoothPageIndicator(
        onDotClicked: OnBoardingController.instance.dotNavigationClick,
        controller: _pageController,
        count: AppValues.v3,
        effect: ExpandingDotsEffect(
          activeDotColor: ColorsManager.button,
          dotHeight: AppSize.s6,
        ),
      ),
    );
  }
}
