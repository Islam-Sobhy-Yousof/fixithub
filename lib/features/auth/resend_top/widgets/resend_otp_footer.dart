import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class ResendOtpFooter extends StatelessWidget {
  const ResendOtpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: StringsManager.emailFieldLabel,
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
            ),
          ),
          MakeSpacke(
            height: AppSize.s30,
          ),
          SizedBox(
            width: AppSize.sinf,
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.login,
                );
              },
              child: Text(
                StringsManager.resendOtpCode,
              ),
            ),
          )
        ],
      ),
    );
  }
}
