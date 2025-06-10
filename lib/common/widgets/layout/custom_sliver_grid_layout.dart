import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_product_card_vertical.dart';
import 'package:flutter/material.dart';

class CustomSliverGridLayout extends StatelessWidget {
  const CustomSliverGridLayout({
    super.key,
    required this.childCount,
    required this.itemBuilder,
    this.mainAxisExtent = AppSize.s288,
  });
  final int childCount;
  final double? mainAxisExtent;
  final Widget Function(BuildContext,int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) => itemBuilder(context, index),
          childCount: childCount,
        
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppValues.v2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: AppSize.s10,
          crossAxisSpacing: AppSize.s10,
        ),
      ),
    );
  }
}
