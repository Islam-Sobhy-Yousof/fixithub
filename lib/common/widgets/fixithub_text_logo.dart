import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:fixithub/app/core/resources/styles_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FixithubTextLogo extends StatelessWidget {
  const FixithubTextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunctions.isDarkMode(context: context);
    return Text(
      StringsManager.logoString,
      style: getBoldStyle(
        fontSize: FontSize.s60,
        color: isDark ? ColorsManager.white : ColorsManager.primary,
      ),
    );
  }
}