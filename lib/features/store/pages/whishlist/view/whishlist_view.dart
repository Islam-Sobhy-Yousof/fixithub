import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/widgets/custom_components/custom_app_bar.dart';
import 'package:fixithub/common/widgets/layout/custom_sliver_grid_layout.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_circular_icon.dart';
import 'package:fixithub/common/widgets/shopping_card/custom_product_card_vertical.dart';
import 'package:fixithub/features/store/pages/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class WhishlistView extends StatelessWidget {
  const WhishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'WhishList',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          CustomSliverGridLayout(
            childCount: 14,
            itemBuilder: (_, index) => const CustomProductCardVertical(),
          )
        ],
      ),
    );
  }
}
