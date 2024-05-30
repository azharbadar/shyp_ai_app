import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Others%20Screen%20Controller/others_screen_controller.dart';
import 'package:shyp_ai_app/Screens/Customer%20Screen/customer_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Screens/Terms%20Conditions%20Screen/terms_condition_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class OtherScreen extends StatelessWidget {
  static const String routeName = '/other';
  OtherScreen({super.key});
  OthersController othersController = Get.put(OthersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.WhiteColor,
        elevation: 0.0,
        // leading: const Icon(Icons.arrow_back_outlined,
        //     color: ColorResources.BLACKCOLOR, size: 40),
        leadingWidth: 28,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
              height: 24,
              child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset("assets/CustomerScreen_img/arr.png"))),
        ),
        // titleSpacing: 0,
        title: Text(
          "Others",
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorResources.BLACKCOLOR),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Get.to(const SideBarSreen());
                // Get.to(SideBarSreen());
              },
              child: const Icon(
                Icons.menu,
                color: ColorResources.BLACKCOLOR,
                size: 42,
                weight: 8,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Obx(() => Container(
                    width: Get.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorResources.BELUGA,
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButton(
                          value: othersController.customerOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            othersController.changecustomerOption(newValue!);
                          },
                          items: othersController.customerDropdown
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 10),
              Obx(() => Container(
                    width: Get.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorResources.BELUGA,
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButton(
                          value: othersController.selepersonOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            othersController.changesaleOption(newValue!);
                          },
                          items: othersController.salepersonDropdown
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 10),
              Obx(() => Container(
                    width: Get.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorResources.BELUGA,
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButton(
                          value: othersController.accounttypeOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            othersController.changeaccountOption(newValue!);
                          },
                          items: othersController.accounttypeDropdown
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              Row(
                children: [
                  Obx(
                    () => Transform.scale(
                      scale: 1.4,
                      child: Checkbox(
                        activeColor: ColorResources.SONICSILVER,
                        value: othersController.ischeck.value,
                        onChanged: (value) {
                          othersController.enablecheck();
                        },
                      ),
                    ),
                  ),
                  Text(
                    "Agree to ",
                    style: GoogleFonts.montserrat(
                      color: ColorResources.SHADOWGARGOYLE,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const TermConditionScreen());
                    },
                    child: Text(
                      "Terms & Conditions",
                      style: GoogleFonts.montserrat(
                        decoration: TextDecoration.underline,
                        height: 1,
                        decorationThickness: 2,
                        color: ColorResources.BLACKCOLOR,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 46,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          color: ColorResources.LAVENDERBREEZE,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: InkWell(
                          // onTap: () => Get.offNamed(SendLinkScreen.routeName),
                          child: Text(
                            "Save",
                            style: GoogleFonts.montserrat(
                                color: ColorResources.PIGIRON, fontSize: 16),
                          ),
                        ),
                      )),
                  InkWell(
                    onTap: () {
                      Get.dialog(
                        AlertDialog(
                          backgroundColor: ColorResources.BLACKCOLOR,
                          contentPadding:
                              const EdgeInsets.only(top: 20, bottom: 40),
                          insetPadding: const EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          title: Container(
                            width: Get.width,
                            child: CircleAvatar(
                              radius: 70,
                              backgroundColor: ColorResources.SNOWFLAKE,
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(20), // Border radius
                                child: InkWell(
                                  onTap: () {
                                    Get.to(const CustomerScreen());
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
                                "Successful!!",
                                style: GoogleFonts.montserrat(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: ColorResources.WhiteColor),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Your customer has been added",
                                style: GoogleFonts.montserrat(
                                    color: ColorResources.OROCHIMARU),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 46,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          color: ColorResources.BLACKCOLOR,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: GoogleFonts.montserrat(
                              color: ColorResources.WhiteColor, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
