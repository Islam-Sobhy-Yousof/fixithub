import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:flutter/material.dart';

class CustomVerticalCard extends StatelessWidget {
  const CustomVerticalCard({
    super.key,
    this.width = AppSize.s250,
    this.raduis = AppSize.s16,
    this.padding = const EdgeInsets.only(
      bottom: AppPadding.p16,
    ),
    this.backgroundColor,
    required this.cardThumbNail,
    required this.cardTextDetails,
    required this.cardFooter,
  });
  final double width;
  final double raduis;
  final EdgeInsets padding;
  final Color? backgroundColor;
  final Widget cardThumbNail;
  final Widget cardTextDetails;
  final Widget cardFooter;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return Container(
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ??
            (isDarkMode ? ColorsManager.white : ColorsManager.darkPrimary),
        borderRadius: BorderRadius.circular(raduis),
      ),
      child: Column(
        children: [
          cardThumbNail,
          const MakeSpacke(),
          cardTextDetails,
          const MakeSpacke(),
          cardFooter,
        ],
      ),
    );
  }
}
