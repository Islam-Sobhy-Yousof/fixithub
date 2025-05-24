import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/device/device_utility.dart';
import 'package:fixithub/features/on_boarding/presentation/controllers/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceUtility.getBottomNavigationBarHeight(),
      right: AppSize.s16,
      child: ElevatedButton(
        onPressed:OnBoardingController.instance.nextPage,
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
