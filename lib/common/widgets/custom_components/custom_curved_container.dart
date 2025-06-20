import 'package:fixithub/common/styles/curved_clipper.dart';
import 'package:flutter/material.dart';

class CustomCurvedContainer extends StatelessWidget {
  const CustomCurvedContainer({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedClipper(),
      child: child,
    );
  }
}
