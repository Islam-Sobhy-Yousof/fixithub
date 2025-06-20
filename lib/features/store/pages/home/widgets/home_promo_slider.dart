import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:fixithub/common/widgets/custom_components/custom_circular_container.dart';
import 'package:fixithub/common/widgets/custom_components/custom_ronded_image.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:fixithub/features/store/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class HomePromoSlider extends StatelessWidget {
  HomePromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  final controller = HomeController.instance;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context: context);
    final Color selectedDotColor =
        isDarkMode ? ColorsManager.white : ColorsManager.primary;
    // final Color unSelectedDotColor = isDarkMode ? ColorsManager.lightPrimary : ColorsManager.primary;
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (imageUrl) => CustomRoundedImage(
                  imageUrl: imageUrl,
                ),
              )
              .toList(),
          options: CarouselOptions(
            // autoPlay: true, //! un comment it in production
            viewportFraction: AppFractions.f10,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const MakeSpacke(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < banners.length; i++)
              Obx(
                () => CustomRoundedContainer(
                  width: AppSize.s20,
                  height: AppSize.s4,
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? selectedDotColor
                      : ColorsManager.lightPrimary,
                  opacityFraction: AppFractions.f10,
                  margin: EdgeInsets.only(
                    right: AppMargin.m16,
                  ),
                ),
              ),
          ],
        )
      ],
    );
  }
}
