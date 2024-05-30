import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  var isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}