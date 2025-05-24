import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/common/styles/spacing_style.dart';
import 'package:fixithub/common/widgets/auth_header.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/features/auth/login/presentation/widgets/login_footer.dart';
import 'package:flutter/material.dart';

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
              AuthHeader(
                headerTitle: StringsManager.loginTitle,
                headerSubTitle: StringsManager.loginSubTitle,
              ),
              MakeSpacke(),
              LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
