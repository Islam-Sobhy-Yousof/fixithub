import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/custom_chip.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomCardFooter extends StatelessWidget {
  CustomCardFooter({
    super.key,
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppSize.s10,
    ),
    this.icon = Iconsax.shopping_cart,
    this.priceBackground = ColorsManager.lightPrimary,
    this.priceTextColor = ColorsManager.white,
    this.leftItemsBackground = ColorsManager.chipColor,
    this.leftItemsTextColor = ColorsManager.primary,
    this.buttonBackground,
    this.cartIconColor = ColorsManager.white,
    required this.onPressed,
    required this.leftItems,
    required this.price,
  });

  final EdgeInsets padding;
  final String price;
  final Color priceBackground;
  final Color priceTextColor;
  final String leftItems;
  final Color leftItemsBackground;
  final Color leftItemsTextColor;
  final Color? buttonBackground;
  final Color cartIconColor;

  VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomChip(
                color: priceBackground,
                child: Text(
                  price,
                  style: Theme.of(context).textTheme.bodyMedium?.apply(
                        color: priceTextColor,
                      ),
                ),
              ),
              const MakeSpacke(
                width: 5,
              ),
              CustomChip(
                color: leftItemsBackground,
                child: Text(
                  '$leftItems ${StringsManager.leftText}',
                  style: Theme.of(context).textTheme.bodyMedium?.apply(
                        color: leftItemsTextColor,
                      ),
                ),
              )
            ],
          ),
          CustomChip(
            color: buttonBackground ??
                (isDarkMode ? ColorsManager.primary : ColorsManager.red),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: cartIconColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
