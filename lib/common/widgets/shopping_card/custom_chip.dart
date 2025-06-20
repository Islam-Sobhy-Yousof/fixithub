import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    this.width = AppSize.s70,
    this.height = AppSize.s35,
    this.color = ColorsManager.chipColor,
    this.radius = AppDoubleValues.v10,
    this.textColor = ColorsManager.primary,
    required this.child,
  });

  final double? width;
  final double? height;
  final Color? color;
  final double radius;
  final Widget child;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
