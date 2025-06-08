import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VerticalTextImage extends StatelessWidget {
  const VerticalTextImage({
    super.key,
    this.backGroundColor = ColorsManager.white,
    this.textColor = ColorsManager.white,
    required this.text,
    required this.image,
    required this.onTap,
  });
  final Color? backGroundColor;
  final String text;
  final String image;
  final Color textColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: AppSize.s16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppSize.s56,
              height: AppSize.s56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppSize.s56,
                ),
                color: backGroundColor,
              ),
              child: Center(
                child: Icon(
                  Iconsax
                      .battery_full, //! image should be here instead of an icon
                  color: ColorsManager.primary,
                ),
              ),
            ),
            const MakeSpacke(),
            SizedBox(
              width: AppSize.s80,
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: textColor,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
