import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/circular_container.dart';
import 'package:fixithub/common/widgets/custom_curved_container.dart';
import 'package:flutter/material.dart';

class PrimaryStoreHeader extends StatelessWidget {
  const PrimaryStoreHeader({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomCurvedContainer(
      child: Container(
        padding: EdgeInsets.only(
          bottom: AppSize.s8,
        ),
        decoration: BoxDecoration(
          color: ColorsManager.lightPrimary,
        ),
        child: Stack(
          children: [
            Positioned(
              top: AppNegativeSizes.n150,
              right: AppNegativeSizes.n250,
              child: CircularContainer(),
            ),
            Positioned(
              top: AppSize.s100,
              right: AppNegativeSizes.n300,
              child: CircularContainer(),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
