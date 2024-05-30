import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Secondary%20Details%20Controller/secondary_details_controller.dart';
import 'package:shyp_ai_app/Custom%20Widget/custom_widget.dart';
import 'package:shyp_ai_app/Screens/Bank%20Details%20Screen/bank_details_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class SecondaryDetailScreen extends StatelessWidget {
  static const String routeName = '/secondarydetailscreen';
  SecondaryDetailScreen({super.key});
  SecondaryDetailController secondarydetailcontroller =
      Get.put(SecondaryDetailController());
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
        title: Text.rich(TextSpan(
            text: "Secondary Details ",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorResources.BLACKCOLOR,
            ),
            children: <InlineSpan>[
              TextSpan(
                  text: "(Optional)",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.BLACKCOLOR))
            ])),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                // Get.offNamed(SideBarSreen.routeName);
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
                          value: secondarydetailcontroller.selectOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            secondarydetailcontroller.changeOption(newValue!);
                          },
                          items: secondarydetailcontroller.selectDropdown
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
                    hintText: "Phone Number",
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
                    hintText: "Comment",
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
              Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorResources.LAVENDERBREEZE,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: InkWell(
                      onTap: () => Get.to(SecondaryDetailScreen()),
                      child: Text(
                        "Add",
                        style: GoogleFonts.montserrat(
                            color: ColorResources.PIGIRON, fontSize: 16),
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: secondarylist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                            // margin:  EdgeInsets.only(right: 0),

                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    secondarylist[index].contperson,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    secondarylist[index].personname,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                secondarylist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            child: Row(
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment
                                              //         .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  secondarylist[index].email,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 100),
                                                Text(
                                                  secondarylist[index]
                                                      .emailtext,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                      color: ColorResources
                                                          .SHADOWGARGOYLE),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 14),
                                          Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                secondarylist[index].phone,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorResources
                                                        .BLACKCOLOR),
                                              ),
                                              const SizedBox(width: 20),
                                              Text(
                                                secondarylist[index].phoneno,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: ColorResources
                                                        .SHADOWGARGOYLE),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 14),
                                          Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                secondarylist[index]
                                                    .designation,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorResources
                                                        .BLACKCOLOR),
                                              ),
                                              const SizedBox(width: 44),
                                              Text(
                                                secondarylist[index]
                                                    .designationtext,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: ColorResources
                                                        .SHADOWGARGOYLE),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 14),
                                          Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                secondarylist[index].actiontext,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: ColorResources
                                                        .BLACKCOLOR),
                                              ),
                                              const SizedBox(width: 90),
                                              Text(
                                                secondarylist[index].removetext,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    decoration: TextDecoration
                                                        .underline,
                                                    decorationThickness: 2,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorResources
                                                        .NAGAVIPERColor),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                )
                              ],
                            )),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
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
                    onTap: () => Get.to(BankDetailScreen()),
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
