import 'package:fixithub/app/core/resources/app_strings.dart';
import 'package:fixithub/app/core/resources/values_manager.dart';
import 'package:fixithub/app/routes/routes.dart';
import 'package:fixithub/common/widgets/make_spacke.dart';
import 'package:fixithub/features/auth/register/presentation/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RegisterFooter extends StatelessWidget {
  RegisterFooter({super.key});

  final _controller = RegisterController.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppSize.s24,
      ),
      child: Form(
        key: _controller.formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                labelText: StringsManager.userName,
              ),
              controller: _controller.userNameController,
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
              controller: _controller.emailController,
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
              controller: _controller.passwordController,
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
              controller: _controller.confirmPasswordController,
            ),
            MakeSpacke(
              height: AppSize.s12,
            ),
            Obx(
              () => Row(
                children: [
                  Checkbox(
                      value: _controller.isNormalUser.value,
                      onChanged: (_) {
                        _controller.toggelUserTypeCheckBox();
                      }),
                  Text(
                    StringsManager.normalUser,
                  ),
                  MakeSpacke(
                    width: AppSize.s10,
                    height: AppSize.s0,
                  ),
                  Checkbox(
                      value: !_controller.isNormalUser.value,
                      onChanged: (_) {
                        _controller.toggelUserTypeCheckBox();
                      }),
                  Text(
                    StringsManager.workerUser,
                  ),
                ],
              ),
            ),
            MakeSpacke(
              height: AppSize.s12,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Get.toNamed(Routes.verifyAccount);
                },
                child: Obx(() {
                  if(_controller.isLoading.value){
                    return CircularProgressIndicator();
                  }
                 return Text(
                      StringsManager.registerTitle,
                    );
                }),
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
