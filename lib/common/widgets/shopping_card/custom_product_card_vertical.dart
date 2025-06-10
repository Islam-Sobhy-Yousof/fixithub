import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/shadow_style.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/circular_container.dart';
import 'package:fixithub/common/widgets/custom_ronded_image.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_chip.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_circular_icon.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_product_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomProductCardVertical extends StatelessWidget {
  const CustomProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    return Container(
      width: 160,
      padding: EdgeInsets.all(
        AppPadding.p1,
      ),
      decoration: BoxDecoration(
        color: isDarkMode ? ColorsManager.white : ColorsManager.primary,
        boxShadow: [
          ShadowStyle.horizontalProductShadow,
        ],
        borderRadius: BorderRadius.circular(
          AppSize.s16,
        ),
      ),
      child: Column(
        children: [
          CustomRoundedContainer(
            backgroundColor:
                isDarkMode ? ColorsManager.lightGrey : ColorsManager.primary,
            height: AppSize.s140,
            padding: EdgeInsets.all(
              AppSize.s10,
            ),
            child: Stack(
              children: [
                CustomRoundedImage(
                  imageUrl: ImageAssets.productImage1,
                  applyBorderRadius: true,
                ),
                Positioned(
                  top: AppDoubleValues.v5,
                  child: CustomChip(
                    child: Text(
                      'Sports',
                      style: Theme.of(context).textTheme.labelLarge?.apply(
                            color: ColorsManager.primary,
                          ),
                    ),
                  ),
                ),
                Positioned(
                  top: AppDoubleValues.v2,
                  right: AppDoubleValues.v0,
                  child: CustomCircularIcon(
                    icon: Iconsax.heart5,
                    iconColor: ColorsManager.red,
                  ),
                ),
              ],
            ),
          ),
          const MakeSpacke(
            height: AppSize.s10,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: AppSize.s8,
              bottom: AppSize.s8,
            ),
            child: Column(
              children: [
                const CustomProductText(
                  text: 'Awsome Shoes with fancy design',
                  isSmallSize: false,
                ),
                const MakeSpacke(
                  height: AppSize.s10,
                ),
                CustomProductText(
                  text:
                      'Take the advantage of the product to be one of the best who ever wear it',
                  subTitleColor: ColorsManager.grey,
                ),
                const MakeSpacke(
                  height: AppSize.s10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // spacing: AppSize.s16,
                    children: [
                      CustomChip(
                        width: AppSize.s50,
                        color: ColorsManager.lightPrimary,
                        child: Text(
                          '\$243',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      CustomChip(
                        width: AppSize.s50,
                        color: isDarkMode
                            ? ColorsManager.primary
                            : ColorsManager.chipColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Iconsax.shopping_cart,
                            color: isDarkMode
                                ? ColorsManager.white
                                : ColorsManager.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
