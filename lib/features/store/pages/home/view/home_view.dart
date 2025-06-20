import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/shadow_style.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/custom_components/custom_circular_container.dart';
import 'package:fixithub/common/widgets/layout/custom_sliver_grid_layout.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_chip.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_circular_icon.dart';
import 'package:fixithub/common/widgets/custom_components/custom_ronded_image.dart';
import 'package:fixithub/common/widgets/custom_components/custom_search_bar.dart';
import 'package:fixithub/common/widgets/custom_components/custom_section_heading.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:fixithub/common/widgets/store/primary_store_header.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_product_card_vertical.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_product_text.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_vertical_card.dart';
import 'package:fixithub/common/widgets/custom_components/custom_vertical_text_image.dart';
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
      body: CustomScrollView(
        slivers: [
          // Header Section
          SliverToBoxAdapter(
            child: HomeHeader(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p20),
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
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CustomSectionHeading(
              showButtonColor: true,
              buttonTextColor: ColorsManager.white,
              text: StringsManager.populartProducts,
              onPressed: () {
                Get.to(
                  Dummy(),
                );
              },
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              bottom: AppPadding.p8,
            ),
          ),
          // Grid Section
          CustomSliverGridLayout(
            childCount: 4,
            itemBuilder: (_, index) => const CustomProductCardVertical(),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              bottom: AppPadding.p16,
            ),
          )
        ],
      ),
    );
  }
}
