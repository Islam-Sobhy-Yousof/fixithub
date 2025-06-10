import 'package:flutter/material.dart';

abstract class ColorsManager {
  // Base Colors
  static const Color background = Color(0xFF111827); // Background
  static const Color primary = Color(0xFF1F2937); // Primary
  static const Color lightPrimary = Color(0xFF7F8CF8); // Primary
  static const Color darkPrimary = Color(0xFF121F2F); // Darker variant

  // UI Colors
  static const Color headerText = Color(0xFF7F8CF8); // Header Text
  static const Color button = Color(0xFF4F46E5); // Button Color
  static const Color buttonText = Color(0xFFFFFFFF); // Text on buttons
  static const Color chipColor = Colors.amberAccent; // Text on buttons

  // Common Colors
  static const Color white = Color(0xFFF5F5F5);
  static const Color black = Color(0xFF1A1A1A);
  static const Color transparent = Colors.transparent;
  static const Color shadow1 = Colors.black26;

  // Optional – you may keep grey variants if needed
  static const Color grey = Color(0xFF737477);
  static const Color darkGrey = Color(0xFF525252);
  static const Color lightGrey =
      Color(0x4D9E9E9E); // Colors.grey.withOpacity(.3)
  static const Color grey1 = Color(0xFF707070);
  static const Color grey2 = Color(0xFF797979);

  // Error Color
  static const Color red = Color(0xFFE61F34);
}
