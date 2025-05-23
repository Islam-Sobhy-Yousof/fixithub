import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

// regular style

TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  Color color = ColorsManager.grey,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.regular,
    color,
  );
}

// medium style

TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  Color color = ColorsManager.grey,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.medium,
    color,
  );
}

// medium style

TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  Color color = ColorsManager.grey,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.light,
    color,
  );
}

// bold style

TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  Color color = ColorsManager.grey,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.bold,
    color,
  );
}

// semibold style

TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  Color color = ColorsManager.grey,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.semiBold,
    color,
  );
}
