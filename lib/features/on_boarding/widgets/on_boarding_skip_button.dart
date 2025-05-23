import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/device/device_utility.dart';
import 'package:fixithub/features/on_boarding/view_model/on_boarding_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtility.getAppBarHeight(),
      right: AppSize.s12,
      child: TextButton(
        onPressed: OnBoardingController.instance.skip,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding.p12,
            horizontal: AppPadding.p12,
          ),
          decoration: BoxDecoration(
            color: ColorsManager.button,
            borderRadius: BorderRadius.circular(
              AppSize.s8,
            ),
          ),
          child: Text(
            StringsManager.skipButtonText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
