import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomRoundedImage extends StatelessWidget {
  CustomRoundedImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.padding = AppSize.s16,
    this.borderRaduis = AppSize.s16,
    this.fit,
    this.backgroundColor,
    this.border,
    this.isAssetImage = true,
    this.applyBorderRadius = true,
    this.onTap,
  });

  final double? height;
  final double? width;
  final double padding;
  final String imageUrl;
  final bool isAssetImage;
  final bool applyBorderRadius;
  final BoxFit? fit;
  final BoxBorder? border;
  final double borderRaduis;
  final Color? backgroundColor;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: applyBorderRadius
            ? BorderRadius.circular(
                AppSize.s16,
              )
            : BorderRadius.zero,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(
              borderRaduis,
            ),
          ),
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
      ),
    );
  }
}
