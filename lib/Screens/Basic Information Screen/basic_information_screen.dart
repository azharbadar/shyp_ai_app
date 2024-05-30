import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Basic%20Information%20Controller/basic_Information_controller.dart';
import 'package:shyp_ai_app/Screens/Primary%20Contact%20Screen/primary_contact_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class BasicinformationScreen extends StatelessWidget {
  static const String routeName = '/basicinformation';
  BasicinformationScreen({super.key});
  BasicinformationController basicinformationController =
      Get.put(BasicinformationController());
  bool data = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.WhiteColor,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        // leading: const Icon(Icons.arrow_back_rounded,
        //     color: ColorResources.BLACKCOLOR, size: 40),

        leadingWidth: 28,
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
          "Basic Information",
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
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Full Name",
                    // contentPadding: const EdgeInsets.all(10),
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
                    hintText: "Business Name",
                    // contentPadding: const EdgeInsets.all(10),
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

              const SizedBox(height: 10), //Address line 1
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
                          value:
                              basicinformationController.selectcityOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            basicinformationController
                                .changecityOption(newValue!);
                          },
                          items: basicinformationController.selectcityDropdown
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
                          value: basicinformationController
                              .selectprovinceOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            basicinformationController
                                .changeprovinceOption(newValue!);
                          },
                          items: basicinformationController
                              .selectprovinceDropdown
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
                          value: basicinformationController
                              .selectcountryOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            basicinformationController
                                .changecountryOption(newValue!);
                          },
                          items: basicinformationController
                              .selectcountryDropdown
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
//  mobile show off start
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
                      filled: true,
                      fillColor: ColorResources.BELUGA,
                      suffix: InkWell(
                          onTap: () {
                            basicinformationController.toggleDataVisibility();
                          },
                          child: const Icon(Icons.add))),
                ),
              ),

              const SizedBox(height: 2),

              Obx(
                () => Visibility(
                  visible: basicinformationController.isDataVisible.value,
                  // maintainSize: true,
                  // maintainState: true,
                  // maintainAnimation: true,

                  child: Container(
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
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: ColorResources.SHADOWGARGOYLE,
                              fontWeight: FontWeight.normal),
                          filled: true,
                          fillColor: ColorResources.BELUGA,
                          suffix: const Icon(Icons.add)),
                    ),
                  ),
                ),
              ),
//  mobile show off  end
              const SizedBox(height: 10),
//  Landline show off  start
              Container(
                height: 50,
                width: Get.width,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "Landline",
                      contentPadding: const EdgeInsets.only(top: 30, left: 16),
                      filled: true,
                      fillColor: ColorResources.BELUGA,
                      suffix: InkWell(
                          onTap: () {
                            basicinformationController.toggleDataVisibility2();
                          },
                          child: const Icon(Icons.add))),
                ),
              ),

              const SizedBox(height: 2),

              Obx(
                () => Visibility(
                  visible: basicinformationController.isDataVisible2.value,
                  child: Container(
                    height: 50,
                    width: Get.width,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Landline",
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: ColorResources.SHADOWGARGOYLE,
                              fontWeight: FontWeight.normal),
                          filled: true,
                          fillColor: ColorResources.BELUGA,
                          suffix: const Icon(Icons.add)),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //  Landline show off end

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
                      filled: true,
                      fillColor: ColorResources.BELUGA,
                      suffix: InkWell(
                          onTap: () {
                            basicinformationController.toggleDataVisibility3();
                          },
                          child: const Icon(Icons.add))),
                ),
              ),

              const SizedBox(height: 2),

              Obx(
                () => Visibility(
                  visible: basicinformationController.isDataVisible3.value,
                  child: Container(
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
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          hintStyle: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: ColorResources.SHADOWGARGOYLE,
                              fontWeight: FontWeight.normal),
                          filled: true,
                          fillColor: ColorResources.BELUGA,
                          suffix: const Icon(Icons.add)),
                    ),
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
                          value: basicinformationController
                              .selectsectorOption.value,
                          onChanged: (newValue) {
                            basicinformationController
                                .changesectorOption(newValue!);
                          },
                          items: basicinformationController.selectsectorDropdown
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
                    onTap: () => Get.to(PrimaryContactScreen()),
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

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  //   void fetchData() {
  //   setState(() {
  //     data = !data;
  //   });
  // }
}
