import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/widgets/global/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppSize.s24,
      ),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                labelText: StringsManager.emailFieldLabel,
              ),
            ),
            MakeSpacke(
              height: AppSize.s30,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                labelText: StringsManager.passwordFieldLabel,
              ),
            ),
            MakeSpacke(
              height: AppSize.s30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(
                    Routes.main,
                  );
                },
                child: Text(
                  StringsManager.loginTitle,
                ),
              ),
            ),
            MakeSpacke(),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.register);
                  },
                  child: Text(
                    StringsManager.createAnAccount,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.forgotPassword);
                  },
                  child: Text(
                    StringsManager.forgetPassword,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.resendOTP);
                  },
                  child: Text(
                    StringsManager.resendVerification,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
