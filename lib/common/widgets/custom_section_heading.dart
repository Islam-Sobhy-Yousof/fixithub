import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    this.textColor,
    required this.text,
    this.buttonTitle = StringsManager.viewAllButtonText,
    this.showActionButton = true,
    this.onPressed,
  });

  final Color? textColor;
  final String text;
  final String buttonTitle;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
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
                      color: textColor ?? ColorsManager.white,
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: AppValues.v1,
              ),
              if (showActionButton)
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    buttonTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
