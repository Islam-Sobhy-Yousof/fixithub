import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/utils/device/device_utility.dart';
import 'package:fixithub/common/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
 CustomAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
  });
  final Widget? title;
  final bool showBackArrow;
  final List<Widget>? actions;
  final IconData? leadingIcon;
  VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.s16,
      ),
      child: AppBar(
        title: title,
        actions: actions,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtility.getAppBarHeight());
}
