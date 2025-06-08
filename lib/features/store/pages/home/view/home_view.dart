import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/styles/curved_clipper.dart';
import 'package:fixithub/common/widgets/cart_counter_icon.dart';
import 'package:fixithub/common/widgets/circular_container.dart';
import 'package:fixithub/common/widgets/custom_app_bar.dart';
import 'package:fixithub/common/widgets/custom_curved_container.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/common/widgets/primary_store_header.dart';
import 'package:fixithub/features/store/pages/home/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PrimaryStoreHeader(
                  child: SizedBox(
                width: AppSize.sinf,
                height: AppSize.s300,
                child: Column(
                  children: [
                    HomeAppBar(),
                   
                    
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
