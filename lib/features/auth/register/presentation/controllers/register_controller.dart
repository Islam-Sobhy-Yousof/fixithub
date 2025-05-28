// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fixithub/features/auth/domain/usecases/register_usecase.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

//=============Controllers===============

  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final isNormalUser = true.obs;

  final isLoading = false.obs;
//===================Dependencies=============

  final RegisterUsecase _registerUsecase;
  RegisterController({
    required RegisterUsecase registerUsecase,
  }) : _registerUsecase = registerUsecase;

  Future<void> register() async {
    isLoading.value = true;

    final response = await _registerUsecase(
      input: RegisterationUsecaseInput(
          username: "xyz12s22",
          email: "email1s222@mail.com",
          password: "Password123!",
          role: "worker"),
    );
    isLoading.value = false;
    response.fold((failure) {
      Get.showSnackbar(
        GetSnackBar(
          message: failure.error,
          duration: Duration(seconds: 2),
        ),
      );
    }, (data) {
      Get.showSnackbar(
        GetSnackBar(
          message: data.message,
          duration: Duration(seconds: 2),
        ),
      );
    });
  }

  void toggelUserTypeCheckBox() {
    isNormalUser.value = !isNormalUser.value;
  }

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
