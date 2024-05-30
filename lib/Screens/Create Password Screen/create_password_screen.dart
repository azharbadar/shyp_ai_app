import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Create%20Paasword%20Controller/create_password_controller.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class CreatePasswordScreen extends StatelessWidget {
  static const String routeName = '/createpasswordscreen';
  CreatePasswordScreen({super.key});
  CreatePasswordController createPasswordController =
      Get.put(CreatePasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.ScaffoldColor,
        elevation: 0.0,
        leadingWidth: 28,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
              height: 24,
              child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    "assets/CustomerScreen_img/arr.png",
                    color: ColorResources.WhiteColor,
                  ))),
        ),
      ),
      backgroundColor: ColorResources.ScaffoldColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: ColorResources.WhiteColor,
                  child: Padding(
                    padding: const EdgeInsets.all(36),
                    child: Image.asset(
                        "assets/Create_New_Password_imgs/lock_img.png"),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Create New Password",
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: ColorResources.WhiteColor),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  "Your new password must be different from \npreviously use password",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: ColorResources.OROCHIMARU,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => Container(
                  height: 50,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: createPasswordController.passwordController,
                    obscureText:
                        !createPasswordController.isPasswordVisible.value,
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
                            createPasswordController.isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ColorResources.OROCHIMARU,
                          ),
                          onPressed: () {
                            createPasswordController.togglePasswordVisibility();
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
              const SizedBox(height: 10),
              Obx(
                () => Container(
                  height: 50,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(color: ColorResources.OROCHIMARU),
                    controller: createPasswordController.repasswordController,
                    obscureText:
                        !createPasswordController.isPasswordVisibletwo.value,
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
                            createPasswordController.isPasswordVisibletwo.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ColorResources.OROCHIMARU,
                          ),
                          onPressed: () {
                            createPasswordController
                                .togglePasswordVisibilitytwo();
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
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Get.dialog(AlertDialog(
                    backgroundColor: ColorResources.BLACKCOLOR,
                    contentPadding: const EdgeInsets.only(top: 20, bottom: 40),
                    insetPadding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    title: Container(
                      width: Get.width,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: ColorResources.SNOWFLAKE,
                        child: Padding(
                          padding: const EdgeInsets.all(20), // Border radius
                          child: InkWell(
                            onTap: () {
                              Get.to(LoginScreen());
                            },
                            child: const SizedBox(
                              height: 100,
                              width: 100,
                              child: Image(
                                image: AssetImage(
                                    "assets/SendLink_img/Icon awesome-check.png"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Verified!",
                          style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: ColorResources.WhiteColor),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Asad, You have succesfully\nverified the account.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              color: ColorResources.OROCHIMARU),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ));
                },
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
            ],
          ),
        ),
      ),
    );
  }
}
