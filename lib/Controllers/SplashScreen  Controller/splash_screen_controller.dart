import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shyp_ai_app/Screens/Create%20Account%20Screen/create_account_screen.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';

// import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';

class SplashController extends GetxController {
  changescreen() async {
    await Future.delayed(
      const Duration(seconds: 4),
      () {
        Get.offNamed(LoginScreen.routeName);
      },
    );
    update();
  }

  @override
  void onInit() {
    changescreen();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    changescreen();
    // TODO: implement onClose
    super.onClose();
  }
}
