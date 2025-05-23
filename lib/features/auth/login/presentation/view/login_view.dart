import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/spacing_style.dart';
import 'package:fixithub/common/widgets/fixithub_text_logo.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/features/auth/login/presentation/widgets/login_footer.dart';
import 'package:fixithub/features/auth/login/presentation/widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),
              MakeSpacke(),
              LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
