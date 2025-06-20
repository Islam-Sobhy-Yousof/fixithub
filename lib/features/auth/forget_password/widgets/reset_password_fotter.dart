import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/color_manager.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordFotter extends StatelessWidget {
  const ResetPasswordFotter({
    super.key,
  });

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
          MakeSpacke(
            height: AppSize.s30,
          ),
          PinCodeTextField(
            autoDisposeControllers: false,
            keyboardType: TextInputType.number,
            appContext: context,
            length: AppValues.v6,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(
                AppSize.s4,
              ),
              fieldHeight: AppSize.s50,
              fieldWidth: AppSize.s40,
              activeFillColor: ColorsManager.white,
              inactiveColor: ColorsManager.button,
            ),
          ),
          MakeSpacke(
            height: AppSize.s30,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: StringsManager.newPasswordFieldLabel,
              suffixIcon: Icon(
                Iconsax.eye_slash,
              ),
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
            ),
          ),
          MakeSpacke(
            height: AppSize.s30,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: StringsManager.confirmPasswordLabel,
              suffixIcon: Icon(
                Iconsax.eye_slash,
              ),
              prefixIcon: Icon(
                Iconsax.password_check,
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
                Get.offAllNamed(
                  Routes.login,
                );
              },
              child: Text(
                StringsManager.resetPasswordTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
