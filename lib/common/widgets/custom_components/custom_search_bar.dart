import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.text,
    this.showBackGround = true,
    this.showBorder = true,
    this.icon,
  });

  final IconData? icon;
  final String text;
  final bool showBackGround, showBorder;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.s16,
      ),
      child: Container(
        width: HelperFunctions.screenWidth(),
        padding: EdgeInsets.all(AppSize.s16),
        decoration: BoxDecoration(
          color: showBackGround
              ? isDarkMode
                  ? ColorsManager.white
                  : ColorsManager.primary
              : ColorsManager.transparent,
          borderRadius: BorderRadius.circular(
            AppSize.s16,
          ),
          border: showBorder
              ? Border.all(
                  color:
                      isDarkMode ? ColorsManager.white : ColorsManager.primary,
                )
              : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: showBackGround
                  ? isDarkMode
                      ? ColorsManager.primary
                      : ColorsManager.white
                  : ColorsManager.primary,
            ),
            MakeSpacke(
              width: AppSize.s24,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: showBackGround
                        ? isDarkMode
                            ? ColorsManager.primary
                            : ColorsManager.white
                        : ColorsManager.primary,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
