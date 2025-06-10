import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/custom_chip.dart';
import 'package:fixithub/common/widgets/custom_circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomCardThumbNail extends StatelessWidget {
  const CustomCardThumbNail({
    super.key,
    this.raduis = AppSize.s16,
    this.shadows,
    this.isAssetImage = false,
    this.fit = BoxFit.contain,
    required this.imageUrl,
  });
  final double raduis;
  final List<BoxShadow>? shadows;
  final String imageUrl;
  final bool isAssetImage;
  final BoxFit fit;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          raduis,
        ),
        boxShadow: shadows ??
            [
              BoxShadow(
                color: ColorsManager.lightGrey,
              )
            ],
      ),
      child: Stack(
        children: [
          Center(
            child: isAssetImage
                ? Image.asset(
                    imageUrl,
                    fit: fit,
                  )
                : Image.network(
                    imageUrl,
                    fit: fit,
                  ),
          ),
          Positioned(
            top: AppDoubleValues.v5,
            left: AppDoubleValues.v5,
            child: CustomChip(
              child: Text(
                StringsManager.productName1,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: ColorsManager.primary,
                    ),
              ),
            ),
          ),
          Positioned(
            top: AppDoubleValues.v5,
            right: AppDoubleValues.v5,
            child: CustomCircularIcon(
              icon: Iconsax.heart5,
              backgroundColor: ColorsManager.lightGrey,
            ),
          )
        ],
      ),
    );
  }
}
