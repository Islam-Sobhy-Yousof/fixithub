import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String headerTitle;
  final String headerSubTitle;
  const AuthHeader(
      {super.key, required this.headerTitle, required this.headerSubTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MakeSpacke(
          height: AppSize.s40,
        ),
        Text(
          headerTitle,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: FontSize.s32,
              ),
        ),
        MakeSpacke(
          height: AppSize.s8,
        ),
        Text(
          headerSubTitle,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: FontSize.s18,
              ),
        ),
      ],
    );
  }
}
