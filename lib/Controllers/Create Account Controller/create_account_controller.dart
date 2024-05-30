import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  var isPasswordVisible = false.obs;
  var isPasswordVisibletwo = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void togglePasswordVisibilitytwo() {
    isPasswordVisibletwo.value = !isPasswordVisibletwo.value;
  }
}
