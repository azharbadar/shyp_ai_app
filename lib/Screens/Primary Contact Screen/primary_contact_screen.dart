import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Primary%20Contact%20Controller/primary%20_contact_controller.dart';
import 'package:shyp_ai_app/Screens/Secondary%20Details%20Screen/secondary%20_details_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

import '../SideBar Screen/side_bar_screen.dart';

class PrimaryContactScreen extends StatelessWidget {
  static const String routeName = '/primarycontactscreen';
  PrimaryContactScreen({super.key});
  PrimaryContactController primaryContactController =
      Get.put(PrimaryContactController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.WhiteColor,
        elevation: 0.0,
        // leading: const Icon(Icons.arrow_back_rounded,
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
          "Primary Contact",
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
              Container(
                height: 50,
                width: Get.width,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Full Name",
                    contentPadding: const EdgeInsets.only(top: 30, left: 16),
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: ColorResources.SHADOWGARGOYLE,
                        fontWeight: FontWeight.normal),
                    filled: true,
                    fillColor: ColorResources.BELUGA,
                  ),
                ),
              ),
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
                          value: primaryContactController
                              .selectdesignationOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            primaryContactController
                                .changedesignationOption(newValue!);
                          },
                          items: primaryContactController.selectprovinceDropdown
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
              Container(
                height: 50,
                width: Get.width,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Mobile",
                    contentPadding: const EdgeInsets.only(top: 30, left: 16),
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: ColorResources.SHADOWGARGOYLE,
                        fontWeight: FontWeight.normal),
                    filled: true,
                    fillColor: ColorResources.BELUGA,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: Get.width,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Email",
                    contentPadding: const EdgeInsets.only(top: 30, left: 16),
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: ColorResources.SHADOWGARGOYLE,
                        fontWeight: FontWeight.normal),
                    filled: true,
                    fillColor: ColorResources.BELUGA,
                  ),
                ),
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
                    onTap: () => Get.to(SecondaryDetailScreen()),
                    child: Container(
                        height: 46,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: ColorResources.BLACKCOLOR,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            "Next",
                            style: GoogleFonts.montserrat(
                                color: ColorResources.WhiteColor, fontSize: 16),
                          ),
                        )),
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
