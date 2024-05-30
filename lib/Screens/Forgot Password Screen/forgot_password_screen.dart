import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Forgot%20Password%20Controller/forgor_password_controller.dart';
import 'package:shyp_ai_app/Screens/OTP%20%20SCREEN/otp_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgotpasswordscreen';
  ForgotPasswordScreen({super.key});
  ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.ScaffoldColor,
        elevation: 0.0,
        leadingWidth: 28,
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: SizedBox(
        //       height: 24,
        //       child: InkWell(
        //           onTap: () {
        //             // Get.back();
        //           },
        //           child: Image.asset(
        //             "assets/CustomerScreen_img/arr.png",
        //             color: ColorResources.WhiteColor,
        //           )

        //           )),
        // ),
      ),
      backgroundColor: ColorResources.ScaffoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SizedBox(
            // height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 220,
                      width: 220,
                      child: Image.asset(
                          "assets/Forgot_Password_imgs/profile_img.png")),
                ),
                const SizedBox(height: 40),
                Text(
                  "Forgot Password",
                  style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.WhiteColor),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Text(
                    "Enter your email or phone number received\npassword reset instruction",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.OROCHIMARU,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Obx(
                  () => Container(
                    height: 50,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: forgotPasswordController.passwordController,
                      obscureText:
                          !forgotPasswordController.isPasswordVisible.value,
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
                          suffix: IconButton(
                            icon: Center(
                              child: Icon(
                                forgotPasswordController.isPasswordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: ColorResources.OROCHIMARU,
                              ),
                            ),
                            onPressed: () {
                              forgotPasswordController
                                  .togglePasswordVisibility();
                            },
                          ),
                          hintText: "03057179972",
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.montserrat(
                              color: ColorResources.OROCHIMARU, fontSize: 16)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => Get.toNamed(OtpScreen.routeName),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorResources.WhiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Send",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: ColorResources.BLACKCOLOR,
                      ),
                    )),
                  ),
                ),
                // const SizedBox(height: 140),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
