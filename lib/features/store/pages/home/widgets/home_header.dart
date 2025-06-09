import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/custom_search_bar.dart';
import 'package:fixithub/common/widgets/custom_section_heading.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/common/widgets/primary_store_header.dart';
import 'package:fixithub/features/store/pages/home/widgets/home_app_bar.dart';
import 'package:fixithub/features/store/pages/home/widgets/home_categories.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryStoreHeader(
      child: SizedBox(
        width: AppSize.sinf,
        child: Column(
          children: [
            const HomeAppBar(),
            const MakeSpacke(),
            const CustomSearchBar(
              text: StringsManager.searchFieldMessage,
              icon: Iconsax.search_normal,
            ),
            const MakeSpacke(
              height: AppSize.s30,
            ),
            const CustomSectionHeading(
              text: StringsManager.popularCategories,
              showActionButton: false,
            ),
            const MakeSpacke(),
            HomeCategories()
          ],
        ),
      ),
    );
  }
}
