import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/features/on_boarding/presentation/controllers/on_boarding_controller.dart';
import 'package:fixithub/features/on_boarding/presentation/widgets/on_boarding_dots_indicator.dart';
import 'package:fixithub/features/on_boarding/presentation/widgets/on_boarding_next_button.dart';
import 'package:fixithub/features/on_boarding/presentation/widgets/on_boarding_page.dart';
import 'package:fixithub/features/on_boarding/presentation/widgets/on_boarding_skip_button.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  final _controller = OnBoardingController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: _controller.updatePageIndicator,
            controller: _controller.pageController,
            children: [
              OnBoardingPage(
                image: JsonAssets.onBoardingOne,
                title: StringsManager.onboardingTitle1,
                subTitle: StringsManager.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: JsonAssets.onBoardingTwo,
                title: StringsManager.onboardingTitle2,
                subTitle: StringsManager.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: JsonAssets.onBoardingThree,
                title: StringsManager.onboardingTitle3,
                subTitle: StringsManager.onboardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkipButton(),
          CustomDotsIndicator(
            pageController: _controller.pageController,
          ),
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
