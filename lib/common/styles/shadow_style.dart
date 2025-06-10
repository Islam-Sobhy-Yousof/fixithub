import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class ShadowStyle {
  static final veticalProductShadow = BoxShadow(
      color: ColorsManager.lightGrey,
      blurRadius: AppSize.s50,
      spreadRadius: AppDoubleValues.v7,
      offset: Offset(AppDoubleValues.v0, AppDoubleValues.v2));

  static final horizontalProductShadow = BoxShadow(
      color: ColorsManager.lightGrey,
      blurRadius: AppSize.s50,
      spreadRadius: AppDoubleValues.v7,
      offset: Offset(AppDoubleValues.v0, AppDoubleValues.v2));
}
