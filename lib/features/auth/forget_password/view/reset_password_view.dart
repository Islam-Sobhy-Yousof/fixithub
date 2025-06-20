import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/spacing_style.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:fixithub/features/auth/forget_password/widgets/reset_password_fotter.dart';
import 'package:fixithub/features/auth/widgets/auth_header.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeader(
                headerTitle: StringsManager.resetPasswordTitle,
                headerSubTitle: StringsManager.resetPasswordSubTitle,
              ),
              MakeSpacke(
                height: AppSize.s50,
              ),
              ResetPasswordFotter()
            ],
          ),
        ),
      ),
    );
  }
}

