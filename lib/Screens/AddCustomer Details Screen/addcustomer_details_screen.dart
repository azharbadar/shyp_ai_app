import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/AddCustomer%20Details%20Controller/addcustomer_details_controller.dart';

import 'package:shyp_ai_app/Screens/Basic%20Information%20Screen/basic_information_screen.dart';
import 'package:shyp_ai_app/Screens/SendLink%20Screen/send_link_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class AddCustomDetails extends StatelessWidget {
  static const String routeName = '/addcustomer';
  AddCustomDetails({super.key});
  AddCustomerController addCustomerController =
      Get.put(AddCustomerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.WhiteColor,
        elevation: 0.0,
        // leading: const Icon(Icons.arrow_back_rounded,
        //     color: ColorResources.BLACKCOLOR, size: 40),
        leadingWidth: 28,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: SizedBox(
        //       height: 24,
        //       child: InkWell(
        //           onTap: () {
        //             Get.back();
        //           },
        //           child: Image.asset("assets/CustomerScreen_img/arr.png"))),
        // ),
        // titleSpacing: 0,
        title: Text(
          "Add Customer Details",
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

              // first
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
                          value: addCustomerController.BusinesstypeOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            addCustomerController
                                .changeBussinessOption(newValue!);
                          },
                          items: addCustomerController.dropdownOptions
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

              // second
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
                          value: addCustomerController.CustomertypeOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            addCustomerController
                                .changeCustomertypeOption(newValue!);
                          },
                          items: addCustomerController
                                  .CustomertypeOptionDropdown
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(SendLinkScreen.routeName);
                    },
                    child: Container(
                        height: 46,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: ColorResources.LAVENDERBREEZE,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            "Send Link",
                            style: GoogleFonts.montserrat(
                                color: ColorResources.PIGIRON, fontSize: 16),
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(BasicinformationScreen.routeName);
                    },
                    child: Container(
                        height: 46,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: ColorResources.BLACKCOLOR,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Text(
                            "Continue",
                            style: GoogleFonts.montserrat(
                                color: ColorResources.WhiteColor, fontSize: 16),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
