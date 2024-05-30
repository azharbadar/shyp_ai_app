import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shyp_ai_app/Controllers/SplashScreen%20%20Controller/splash_Screen_controller.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.ScaffoldColor,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Image.asset(
            "assets/SplashScreen_imgs/SplashScreen.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          );
        },
      ),

      //  Image.asset(
      //   "SplashScreen_imgs/SplashScreen.png",
      //   fit: BoxFit.fitWidth,
      //   width: MediaQuery.of(context).size.width,
      // ),
    );
  }
}
