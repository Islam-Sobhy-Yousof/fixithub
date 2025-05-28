import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/common/styles/spacing_style.dart';
import 'package:fixithub/features/auth/verify_account/presentation/widgets/verify_account_fotter.dart';
import 'package:fixithub/features/auth/verify_account/presentation/widgets/verify_account_header.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   actions: [
        //     IconButton(
        //       onPressed: () => Get.back(),
        //       icon: Icon(
        //         Iconsax.close_circle,
        //         size: AppSize.s30,
        //       ),
        //     ),
        //   ],
        // ),
        body: SingleChildScrollView(
      child: Padding(
        padding: SpacingStyle.paddingWithAppBarHeight,
        child: SizedBox(
          width: AppSize.sinf,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VerifyAccountHeader(),
              VerifyAccountFotter(),
            ],
          ),
        ),
      ),
    ));
  }
}
