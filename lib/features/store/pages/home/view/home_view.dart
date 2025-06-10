import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/shadow_style.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/circular_container.dart';
import 'package:fixithub/common/widgets/custom_card_thumb_nail.dart';
import 'package:fixithub/common/widgets/custom_chip.dart';
import 'package:fixithub/common/widgets/custom_circular_icon.dart';
import 'package:fixithub/common/widgets/custom_ronded_image.dart';
import 'package:fixithub/common/widgets/custom_search_bar.dart';
import 'package:fixithub/common/widgets/custom_section_heading.dart';
import 'package:fixithub/common/widgets/custom_vertical_text_details.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/common/widgets/primary_store_header.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_card_footer.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_product_text.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_vertical_card.dart';
import 'package:fixithub/common/widgets/vertical_text_image.dart';
import 'package:fixithub/features/store/pages/home/controller/home_controller.dart';
import 'package:fixithub/features/store/pages/home/widgets/home_app_bar.dart';
import 'package:fixithub/features/store/pages/home/widgets/home_categories.dart';
import 'package:fixithub/features/store/pages/home/widgets/home_header.dart';
import 'package:fixithub/features/store/pages/home/widgets/home_promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            HomeHeader(),

            Padding(
              padding: EdgeInsets.all(
                AppPadding.p20,
              ),
              child: Column(
                children: [
                  HomePromoSlider(
                    banners: [
                      ImageAssets.bannerImage3,
                      ImageAssets.bannerImage4,
                      ImageAssets.bannerImage5,
                      ImageAssets.bannerImage6,
                    ],
                  ),
                  const MakeSpacke(),
                  // CustomProductCardVertical(),
                  SizedBox(
                    width: double.infinity,
                    height: 1000,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 300,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (_, index) {
                        return CustomProductCardVertical();
                      },
                    ),
                  )
                ],
              ),
            ),
            //HOME Body
          ],
        ),
      ),
    );
  }
}

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
