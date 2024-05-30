import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Create%20Account%20Controller/create_account_controller.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class CreateAccountScreen extends StatelessWidget {
  static const String routeName = '/createaccountscreen';
  CreateAccountScreen({super.key});
  CreateAccountController createAccountController =
      Get.put(CreateAccountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.ScaffoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  heightFactor: 1,
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Create Account",
                    style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: ColorResources.WhiteColor),
                  ),
                ),
                const SizedBox(height: 24),
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
                        hintText: "Email",
                        contentPadding:
                            const EdgeInsets.only(top: 30, left: 16),
                        hintStyle: GoogleFonts.montserrat(
                            color: ColorResources.OROCHIMARU, fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 50,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
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
                        hintText: "First Name",
                        contentPadding:
                            const EdgeInsets.only(top: 30, left: 16),
                        hintStyle: GoogleFonts.montserrat(
                            color: ColorResources.OROCHIMARU, fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 50,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
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
                        hintText: "Last Name",
                        contentPadding:
                            const EdgeInsets.only(top: 30, left: 16),
                        hintStyle: GoogleFonts.montserrat(
                            color: ColorResources.OROCHIMARU, fontSize: 16)),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 50,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
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
                        hintText: "Phone Number",
                        contentPadding:
                            const EdgeInsets.only(top: 30, left: 16),
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
                      controller: createAccountController.passwordController,
                      obscureText:
                          !createAccountController.isPasswordVisible.value,
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
                            icon: Icon(
                              createAccountController.isPasswordVisible.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: ColorResources.OROCHIMARU,
                            ),
                            onPressed: () {
                              createAccountController
                                  .togglePasswordVisibility();
                            },
                          ),
                          hintText: "Password",
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.montserrat(
                              color: ColorResources.OROCHIMARU, fontSize: 16)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Obx(
                  () => Container(
                    height: 50,
                    child: TextFormField(
                      controller: createAccountController.repasswordController,
                      obscureText:
                          !createAccountController.isPasswordVisibletwo.value,
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
                            icon: Icon(
                              createAccountController.isPasswordVisibletwo.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: ColorResources.OROCHIMARU,
                            ),
                            onPressed: () {
                              createAccountController
                                  .togglePasswordVisibilitytwo();
                            },
                          ),
                          hintText: "Re-Enter Password",
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.montserrat(
                              color: ColorResources.OROCHIMARU, fontSize: 16)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () => Get.toNamed(LoginScreen.routeName),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorResources.WhiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Create Account",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: ColorResources.BLACKCOLOR,
                      ),
                    )),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.toNamed(LoginScreen.routeName);
                  },
                  child: Text(
                    " Already have an account? Sign in",
                    style: GoogleFonts.montserrat(
                        color: ColorResources.OROCHIMARU, fontSize: 14),
                  ),
                ),
                Align(
                  heightFactor: 2,
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
