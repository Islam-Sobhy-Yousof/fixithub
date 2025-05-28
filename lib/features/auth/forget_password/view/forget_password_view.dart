import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/spacing_style.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/features/auth/forget_password/widgets/forget_password_fotter.dart';
import 'package:fixithub/features/auth/widgets/auth_header.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: SizedBox(
            width: AppSize.sinf,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthHeader(
                  headerTitle: StringsManager.forgetPasswordTitle,
                  headerSubTitle: StringsManager.forgetPasswordSubTitle,
                ),
                MakeSpacke(
                  height: AppSize.s100,
                ),
                ForgetPasswordFotter()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
