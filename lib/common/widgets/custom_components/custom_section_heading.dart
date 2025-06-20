import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_chip.dart';
import 'package:flutter/material.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    this.textColor,
    required this.text,
    this.buttonTitle = StringsManager.viewAllButtonText,
    this.showActionButton = true,
    this.buttonColor = ColorsManager.lightPrimary,
    this.showButtonColor = false,
    this.buttonTextColor,
    this.onPressed,
  });

  final Color? textColor;
  final String text;
  final String buttonTitle;
  final Color? buttonColor;
  final bool showButtonColor;
  final bool showActionButton;
  final Color? buttonTextColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return Padding(
      padding: EdgeInsets.only(
        left: AppPadding.p16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: textColor ??
                          (isDarkMode
                              ? ColorsManager.white
                              : ColorsManager.primary),
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: AppValues.v1,
              ),
              if (showActionButton)
                TextButton(
                  onPressed: onPressed,
                  child: CustomChip(
                    color: showButtonColor
                        ? buttonColor ?? ColorsManager.chipColor
                        : ColorsManager.transparent,
                    child: Text(
                      buttonTitle,
                      style: Theme.of(context).textTheme.bodyMedium?.apply(color: buttonTextColor ?? ColorsManager.white, ),
                    ),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
