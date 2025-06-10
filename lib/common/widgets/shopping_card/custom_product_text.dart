import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomProductText extends StatelessWidget {
  const CustomProductText({
    super.key,
    this.isSmallSize = true,
    this.alignment = TextAlign.left,
    this.maxLines = 2,
    this.subTitleColor,
    required this.text,
  });

  final bool isSmallSize;
  final TextAlign alignment;
  final int maxLines;
  final String text;
  final Color? subTitleColor;

  @override
  Widget build(BuildContext context) {
    final selectedTextColor = HelperFunctions.isDarkMode(context: context)
        ? ColorsManager.primary
        : ColorsManager.white;
    return Text(
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      text,
      textAlign: alignment,
      style: isSmallSize
          ? Theme.of(context)
              .textTheme
              .labelMedium
              ?.apply(color: subTitleColor ?? selectedTextColor)
          : Theme.of(context)
              .textTheme
              .bodyMedium
              ?.apply(color: subTitleColor ?? selectedTextColor),
    );
  }
}
