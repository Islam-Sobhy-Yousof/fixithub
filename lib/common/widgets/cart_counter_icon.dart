import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  CartCounterIcon({
    super.key,
    this.iconColor = ColorsManager.white,
    required this.onPressed,
  });
  final Color iconColor;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.shopping_bag,
            color: isDarkMode ? ColorsManager.primary : ColorsManager.white,
          ),
        ),
        Positioned(
          right: AppSize.s0,
          child: Container(
            width: AppSize.s18,
            height: AppSize.s18,
            decoration: BoxDecoration(
              color: isDarkMode ? ColorsManager.primary : ColorsManager.white,
              borderRadius: BorderRadius.circular(
                AppSize.s18,
              ),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        )
      ],
    );
  }
}
