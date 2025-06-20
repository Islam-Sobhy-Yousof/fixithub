import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer({
    super.key,
    this.width = AppSize.s400,
    this.height = AppSize.s400,
    this.raduis = AppSize.s16,
    this.padding = const EdgeInsets.all(
      AppSize.s0,
    ),
    this.opacityFraction = AppFractions.f1,
    this.margin,
    this.child,
    this.backgroundColor = ColorsManager.white,
  });

  final double? width;
  final double? height;
  final double raduis;
  final double opacityFraction;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(
          opacityFraction,
        ),
        borderRadius: BorderRadius.circular(
          raduis,
        ),
      ),
      child: child,
    );
  }
}
