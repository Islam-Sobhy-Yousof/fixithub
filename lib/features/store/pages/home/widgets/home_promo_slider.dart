import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixithub/app/core/resources/assets_manager.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/circular_container.dart';
import 'package:fixithub/common/widgets/custom_ronded_image.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
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
                () => CircularContainer(
                  width: AppSize.s20,
                  height: AppSize.s4,
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? ColorsManager.white
                      : ColorsManager.grey,
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
