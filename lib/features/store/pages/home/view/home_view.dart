import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/circular_container.dart';
import 'package:fixithub/common/widgets/custom_ronded_image.dart';
import 'package:fixithub/common/widgets/custom_search_bar.dart';
import 'package:fixithub/common/widgets/custom_section_heading.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/common/widgets/primary_store_header.dart';
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
