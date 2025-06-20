import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/widgets/custom_components/custom_vertical_text_image.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s100,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return CustomVerticalTextImage(
            text: 'Furnture',
            image: '',
            onTap: () {},
          );
        },
      ),
    );
  }
}
