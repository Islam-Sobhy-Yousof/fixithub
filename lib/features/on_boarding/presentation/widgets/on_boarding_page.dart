import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const OnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppPadding.p16,
      ),
      child: Column(
        children: [
          Lottie.asset(
            image,
            height: HelperFunctions.screenHeight() * AppFractions.f6,
            width: HelperFunctions.screenWidth() * AppFractions.f8,
          ),
          MakeSpacke(),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          MakeSpacke(),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
