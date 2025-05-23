import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class RegisterFooter extends StatelessWidget {
  const RegisterFooter({super.key});

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
                labelText: StringsManager.userName,
              ),
            ),
            MakeSpacke(
              height: AppSize.s30,
            ),
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
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
                labelText: StringsManager.passwordFieldLabel,
              ),
            ),
            MakeSpacke(
              height: AppSize.s30,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
                labelText: StringsManager.confirmPasswordLabel,
              ),
            ),
            MakeSpacke(
              height: AppSize.s30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  StringsManager.registerTitle,
                ),
              ),
            ),
            MakeSpacke(),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Get.offNamed(Routes.login);
                  },
                  child: Text(
                    StringsManager.alreadyHaveAnAccount,
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
