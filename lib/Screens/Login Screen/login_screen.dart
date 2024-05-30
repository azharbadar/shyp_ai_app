import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shyp_ai_app/Controllers/Login%20Controller%20Screen/login_controller_screen.dart';
import 'package:shyp_ai_app/Screens/Create%20Account%20Screen/create_account_screen.dart';
import 'package:shyp_ai_app/Screens/Dashboard%20Screen/dashboard_screen.dart';
import 'package:shyp_ai_app/Screens/Forgot%20Password%20Screen/forgot_password_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/loginscreen';
  LoginScreen({super.key});
  PasswordController _passwordController = Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.ScaffoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  heightFactor: 6,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 30,
                      width: Get.width,
                      child: const Image(
                          image:
                              AssetImage("assets/SplashScreen_imgs/Logo.png"))),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Login to your Account",
                  style: GoogleFonts.montserrat(
                      fontSize: 30,
                      color: ColorResources.WhiteColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  child: TextFormField(
                    style: const TextStyle(color: ColorResources.OROCHIMARU),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: ColorResources.WhiteColor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: ColorResources.WhiteColor),
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Azharud27@gmail.com",
                        contentPadding: const EdgeInsets.all(10),
                        hintStyle: GoogleFonts.montserrat(
                            color: ColorResources.OROCHIMARU, fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 16),

                Obx(
                  () => Container(
                    height: 50,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(color: ColorResources.OROCHIMARU),
                      controller: _passwordController.passwordController,
                      obscureText: !_passwordController.isPasswordVisible.value,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: ColorResources.WhiteColor)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: ColorResources.WhiteColor),
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            icon: Center(
                              child: Icon(
                                _passwordController.isPasswordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: ColorResources.OROCHIMARU,
                              ),
                            ),
                            onPressed: () {
                              _passwordController.togglePasswordVisibility();
                            },
                          ),
                          hintText: "password",
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          // contentPadding: EdgeInsets.zero,
                          hintStyle: GoogleFonts.montserrat(
                              color: ColorResources.OROCHIMARU, fontSize: 16)),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(ForgotPasswordScreen.routeName);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.montserrat(
                          color: ColorResources.OROCHIMARU, fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.offNamed(DashboardScreen.routeName);
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorResources.WhiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Sign In",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: ColorResources.BLACKCOLOR,
                      ),
                    )),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.toNamed(CreateAccountScreen.routeName);
                  },
                  child: Text(
                    " Don’t have an account? Create an Account",
                    style: GoogleFonts.montserrat(
                        color: ColorResources.OROCHIMARU, fontSize: 14),
                  ),
                ),
                // const SizedBox(height: 80),
                Align(
                  // widthFactor: 0.7,
                  heightFactor: 4,
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      height: 40,
                      child:
                          Image.asset("assets/LoginScreen_imgs/loginLogo.png")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
