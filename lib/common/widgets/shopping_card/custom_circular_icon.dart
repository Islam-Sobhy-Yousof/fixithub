import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomCircularIcon extends StatelessWidget {
  CustomCircularIcon({
    super.key,
    this.onPressed,
    this.backgroundColor,
    this.radius = AppSize.s20,
    this.iconColor,
    required this.icon,
  });

  VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double radius;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return CircleAvatar(
      backgroundColor: backgroundColor ?? (isDarkMode ? ColorsManager.lightGrey : ColorsManager.white),
      radius: radius,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor ??
              (isDarkMode ? ColorsManager.lightGrey : ColorsManager.white),
        ),
      ),
    );
  }
}
