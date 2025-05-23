import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MakeSpacke(
          height: AppSize.s40,
        ),
        Text(
          StringsManager.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: FontSize.s45,
              ),
        ),
        MakeSpacke(
          height: AppSize.s8,
        ),
        Text(
          StringsManager.loginSubTitle,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: FontSize.s18,
              ),
        ),
      ],
    );
  }
}
