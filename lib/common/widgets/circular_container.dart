import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.width = AppSize.s400,
    this.height = AppSize.s400,
    this.raduis = AppSize.s400,
    this.padding = AppSize.s0,
    this.child,
    this.backgroundColor = ColorsManager.white,
  });

  final double? width;
  final double? height;
  final double raduis;
  final double? padding;
  final Widget? child;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(
        AppSize.s0,
      ),
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(
          AppFractions.f1,
        ),
        borderRadius: BorderRadius.circular(
          raduis,
        ),
      ),
      child: child,
    );
  }
}
