import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/common/styles/spacing_style.dart';
import 'package:fixithub/features/auth/widgets/auth_header.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:fixithub/features/auth/register/presentation/widgets/register_footer.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              AuthHeader(
                headerTitle: StringsManager.registerTitle,
                headerSubTitle: StringsManager.registerSubTitle,
              ),
              MakeSpacke(),
              RegisterFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
