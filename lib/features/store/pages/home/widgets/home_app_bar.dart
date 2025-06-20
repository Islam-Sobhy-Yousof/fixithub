import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/common/widgets/store/cart_counter_icon.dart';
import 'package:fixithub/common/widgets/custom_components/custom_app_bar.dart';
import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Row(
        children: [
          Text(
            StringsManager.hiMessage,
            style: Theme.of(context).textTheme.bodyLarge?.apply(
                  color: ColorsManager.white,
                ),
          ),
          Text(
            StringsManager.fakeUserName,
            style: Theme.of(context).textTheme.bodyLarge?.apply(
                  color: ColorsManager.white,
                ),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
        ),
      ],
    );
  }
}
