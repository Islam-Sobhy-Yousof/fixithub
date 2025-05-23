import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class MakeSpacke extends StatelessWidget {
  final double width;
  final double height;
  const MakeSpacke({
    super.key,
    this.width = AppSize.s20,
    this.height = AppSize.s20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
