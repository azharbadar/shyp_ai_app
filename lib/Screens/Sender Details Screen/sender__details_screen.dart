import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shyp_ai_app/Controllers/Sender%20Details%20Controller/sender_details_controller.dart';
import 'package:shyp_ai_app/Screens/Reciever%20Details%20Screen/reciever_details_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class SenderDetailsScreen extends StatelessWidget {
  static const String routeName = '/senderdetailsscreen';
  SenderDetailsScreen({super.key});
  SenderDetailsController senderDetailsController =
      Get.put(SenderDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.WhiteColor,
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
                  child: Image.asset("assets/CustomerScreen_img/arr.png"))),
        ),
        // titleSpacing: 0,
        title: Text(
          "Sender Details",
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorResources.BLACKCOLOR),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
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
                    hintText: "Name",
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
              const SizedBox(height: 10), // Business Name
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
                    hintText: "Business Name",
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
                    hintText: "Address line 1",
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
                    hintText: "Address line 2",
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
                          value: senderDetailsController.selectcityOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            senderDetailsController.changecityOption(newValue!);
                          },
                          items: senderDetailsController.selectcityDropdown
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
                          value: senderDetailsController
                              .selectprovinceOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            senderDetailsController
                                .changeprovinceOption(newValue!);
                          },
                          items: senderDetailsController.selectprovinceDropdown
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
                          value:
                              senderDetailsController.selectcountryOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            senderDetailsController
                                .changecountryOption(newValue!);
                          },
                          items: senderDetailsController.selectcountryDropdown
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
                    hintText: "Zip/Postal Code",
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
                    hintText: "Area",
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
                child: IntlPhoneField(
                  disableLengthCheck: true,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: ColorResources.BELUGA,
                      border: InputBorder.none),
                  controller: senderDetailsController.phoneNumberController,
                  initialCountryCode:
                      senderDetailsController.selectedCountryCode.value,
                  onChanged: (phone) {
                    // Handle the phone number input here
                    print(phone.completeNumber);
                  },
                ),
              ),
              const SizedBox(height: 10),
              IntlPhoneField(
                disableLengthCheck: true,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: ColorResources.BELUGA,
                    border: InputBorder.none),
                controller: senderDetailsController.phoneNumberController,
                initialCountryCode:
                    senderDetailsController.selectedCountryCode.value,
                onChanged: (phone) {
                  // Handle the phone number input here
                  print(phone.completeNumber);
                },
              ),
              const SizedBox(
                height: 10,
              ),
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
                          value: senderDetailsController.selectcnicOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            senderDetailsController.changecnicOption(newValue!);
                          },
                          items: senderDetailsController.selectcnicDropdown
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
                    hintText: "Shipper's Ref",
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
                      width: 160,
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
                    onTap: () => Get.to(ReceiverDetailsScreen()),
                    child: Container(
                        height: 46,
                        width: 160,
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
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
