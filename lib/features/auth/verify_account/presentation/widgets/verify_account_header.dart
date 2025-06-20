import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VerifyAccountHeader extends StatelessWidget {
  const VerifyAccountHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringsManager.otpVerificationTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        MakeSpacke(),
        Text(
          StringsManager.confirmAccountSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          width: HelperFunctions.screenWidth(),
          height: HelperFunctions.screenHeight() * AppFractions.f4,
          child: Lottie.asset(
            fit: BoxFit.fill,
            JsonAssets.verifyAccount,
          ),
        ),
      ],
    );
  }
}
