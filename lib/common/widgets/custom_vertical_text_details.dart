import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:flutter/material.dart';

class CustomVerticalTextDetails extends StatelessWidget {
  const CustomVerticalTextDetails({
    super.key,
    this.padding = const EdgeInsets.only(
      left: AppSize.s10,
    ),
    this.titleSubtitleSpacing = AppSize.s10,
    this.textAlignment = CrossAxisAlignment.start,
    this.titleColor,
    this.subTitleColor,
    required this.title,
    required this.subTitle,
  });
  final EdgeInsets padding;
  final CrossAxisAlignment textAlignment;
  final Color? titleColor;
  final Color? subTitleColor;
  final String title;
  final String subTitle;
  final double titleSubtitleSpacing;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: textAlignment,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.apply(
                  color: titleColor ??
                      (isDarkMode
                          ? ColorsManager.primary
                          : ColorsManager.white),
                ),
            overflow: TextOverflow.ellipsis,
          ),
          MakeSpacke(
            height: titleSubtitleSpacing,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: subTitleColor ??
                      (isDarkMode
                          ? ColorsManager.primary
                          : ColorsManager.white),
                ),
            overflow: TextOverflow.ellipsis,
            maxLines: AppValues.v3,
          ),
        ],
      ),
    );
  }
}
