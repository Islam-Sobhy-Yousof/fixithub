


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {


static RegisterController get instance => Get.find();

//=============Controllers===============


final  userNameController = TextEditingController();
final  emailController = TextEditingController();
final  passwordController = TextEditingController();
final  confirmPasswordController = TextEditingController();

final  formKey = GlobalKey<FormState>();

final isNormalUser = true.obs;

  Future<void> register() async{


  }

  void toggelUserTypeCheckBox(){
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