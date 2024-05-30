import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/Shipment%20Details%20Controller/shipment_details_controller.dart';
import 'package:shyp_ai_app/Screens/Shipments%20Sreen/shipment_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class ShipmentDetailsScreen extends StatelessWidget {
  static const String routeName = '/shipmentdetailsscreen';
  ShipmentDetailsScreen({super.key});
  ShipmentDetailsController shipmentDetailsController =
      Get.put(ShipmentDetailsController());
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
          "Shipment Details",
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
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          value: shipmentDetailsController
                              .selectcontentOption.value,
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: ColorResources.SHADOWGARGOYLE),
                          onChanged: (newValue) {
                            shipmentDetailsController
                                .changecontentOption(newValue!);
                            if (shipmentDetailsController
                                    .selectcontentDropdown[1] ==
                                shipmentDetailsController
                                    .selectcontentDropdown[1]!) {
                              shipmentDetailsController
                                  .dropdownDataVisibility();
                            }
                          },
                          items: shipmentDetailsController.selectcontentDropdown
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
              const SizedBox(height: 2),
              Obx(() => Visibility(
                    visible:
                        shipmentDetailsController.dropdownDataVisible.value,
                    child: Container(
                      width: Get.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: ColorResources.BELUGA,
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButton(
                            value: shipmentDetailsController
                                .selectshipmentOption.value,
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: ColorResources.SHADOWGARGOYLE),
                            onChanged: (newValue) {
                              shipmentDetailsController
                                  .changeshipmentOption(newValue!);
                            },
                            items: shipmentDetailsController
                                .selectshipmentDropdown
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 2),

              Obx(
                () => Visibility(
                  visible: shipmentDetailsController.dropdownDataVisible.value,
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
                          hintText: "No. of Package(s)  ",
                          contentPadding:
                              const EdgeInsets.only(top: 30, left: 16),
                          filled: true,
                          fillColor: ColorResources.BELUGA,
                          suffix: InkWell(
                              onTap: () {
                                // alert dialogue start packages
                                Get.dialog(AlertDialog(
                                  contentPadding: const EdgeInsets.only(
                                      top: 16, bottom: 32),
                                  insetPadding: const EdgeInsets.all(24),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  title: Container(
                                    width: Get.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: InkWell(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: const Icon(
                                                    Icons.close_outlined))),
                                        const SizedBox(height: 10),
                                        Text("No. of Package(s)",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                color:
                                                    ColorResources.BLACKCOLOR,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: Get.width,
                                            child: TextFormField(
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText:
                                                    "Enter Weight in KG(s)",
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        top: 30, left: 16),
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 50,
                                            width: Get.width,
                                            child: TextFormField(
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText: "Enter Length in cm",
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        top: 30, left: 16),
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 50,
                                            width: Get.width,
                                            child: TextFormField(
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText: "Enter Width in cm",
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        top: 30, left: 16),
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 50,
                                            width: Get.width,
                                            child: TextFormField(
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText: "Enter Height in cm",
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        top: 30, left: 16),
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Obx(() => Container(
                                                width: Get.width,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorResources.BELUGA,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10),
                                                    child: DropdownButton(
                                                      value: shipmentDetailsController
                                                          .selectpackgingOption
                                                          .value,
                                                      style: GoogleFonts.montserrat(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: ColorResources
                                                              .SHADOWGARGOYLE),
                                                      onChanged: (newValue) {
                                                        shipmentDetailsController
                                                            .changepackagingOption(
                                                                newValue!);
                                                      },
                                                      items: shipmentDetailsController
                                                          .selectpackgingDropdown
                                                          .map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              value) {
                                                        return DropdownMenuItem<
                                                            String>(
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
                                                    color:
                                                        ColorResources.BELUGA,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10),
                                                    child: DropdownButton(
                                                      value:
                                                          shipmentDetailsController
                                                              .selectdetailOption
                                                              .value,
                                                      style: GoogleFonts.montserrat(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: ColorResources
                                                              .SHADOWGARGOYLE),
                                                      onChanged: (newValue) {
                                                        shipmentDetailsController
                                                            .changedetailOption(
                                                                newValue!);
                                                      },
                                                      items: shipmentDetailsController
                                                          .selectdetailDropdown
                                                          .map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              value) {
                                                        return DropdownMenuItem<
                                                            String>(
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
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText:
                                                    "Special Instructions",
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        top: 30, left: 16),
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 48,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorResources.BLACKCOLOR,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "Add",
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    color: ColorResources
                                                        .WhiteColor),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));

                                // alert dialogue end
                              },
                              child: const Icon(Icons.add))),
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 2),
              // Obx(
              //   () => Visibility(
              //     visible: shipmentDetailsController.isDataVisible.value,
              //     // maintainSize: true,
              //     // maintainState: true,
              //     // maintainAnimation: true,

              //     child: Container(
              //       height: 50,
              //       width: Get.width,
              //       child: TextField(
              //         decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(8),
              //               borderSide: BorderSide.none,
              //             ),
              //             hintText: "No. of Package(s)",
              //             hintStyle: GoogleFonts.montserrat(
              //                 fontSize: 16,
              //                 color: ColorResources.SHADOWGARGOYLE,
              //                 fontWeight: FontWeight.normal),
              //             filled: true,
              //             fillColor: ColorResources.BELUGA,
              //             suffix: const Icon(Icons.add)),
              //       ),
              //     ),
              //   ),
              // ),

              const SizedBox(height: 2),

              // alert Dialogue     Start
              Obx(
                () => Visibility(
                  visible: shipmentDetailsController.dropdownDataVisible.value,
                  child: Container(
                    height: 50,
                    width: Get.width,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Content Detail(s)",
                          filled: true,
                          fillColor: ColorResources.BELUGA,
                          suffix: InkWell(
                              onTap: () {
                                // alert dialogue content start
                                Get.dialog(AlertDialog(
                                  contentPadding: const EdgeInsets.only(
                                      top: 16, bottom: 32),
                                  insetPadding: const EdgeInsets.all(24),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  title: Container(
                                    width: Get.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: InkWell(
                                                onTap: () {
                                                  Get.back();
                                                },
                                                child: const Icon(
                                                    Icons.close_outlined))),
                                        const SizedBox(height: 10),
                                        Text("Content Detail(s)",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                color:
                                                    ColorResources.BLACKCOLOR,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                  ),
                                  content: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          Obx(() => Container(
                                                width: Get.width,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorResources.BELUGA,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10),
                                                    child: DropdownButton(
                                                      value: shipmentDetailsController
                                                          .selectcategoryOption
                                                          .value,
                                                      style: GoogleFonts.montserrat(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: ColorResources
                                                              .SHADOWGARGOYLE),
                                                      onChanged: (newValue) {
                                                        shipmentDetailsController
                                                            .changecategoryOption(
                                                                newValue!);
                                                      },
                                                      items: shipmentDetailsController
                                                          .selectcategoryDropdown
                                                          .map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              value) {
                                                        return DropdownMenuItem<
                                                            String>(
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
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText: "Enter Description",
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 50,
                                            width: Get.width,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText: "Enter Quantity",
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 50,
                                            width: Get.width,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText: "Enter Value in USD",
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 50,
                                            width: Get.width,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: BorderSide.none,
                                                ),
                                                hintText: "Enter HS Code",
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 16,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                filled: true,
                                                fillColor:
                                                    ColorResources.BELUGA,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Obx(() => Container(
                                                width: Get.width,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorResources.BELUGA,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10),
                                                    child: DropdownButton(
                                                      value:
                                                          shipmentDetailsController
                                                              .selectcountryOption
                                                              .value,
                                                      style: GoogleFonts.montserrat(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: ColorResources
                                                              .SHADOWGARGOYLE),
                                                      onChanged: (newValue) {
                                                        shipmentDetailsController
                                                            .changecountryOption(
                                                                newValue!);
                                                      },
                                                      items: shipmentDetailsController
                                                          .selectcountryDropdown
                                                          .map<
                                                              DropdownMenuItem<
                                                                  String>>((String
                                                              value) {
                                                        return DropdownMenuItem<
                                                            String>(
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
                                            height: 48,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorResources.BLACKCOLOR,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Center(
                                              child: Text(
                                                "Add",
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 16,
                                                    color: ColorResources
                                                        .WhiteColor),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                                // alert dialogue content end
                              },
                              child: const Icon(Icons.add))),
                    ),
                  ),
                ),
              ),
              // Alert Dialogie End

              const SizedBox(height: 2),

              // Obx(
              //   () => Visibility(
              //     visible: shipmentDetailsController.isDataVisibletwo.value,
              //     // maintainSize: true,
              //     // maintainState: true,
              //     // maintainAnimation: true,

              //     child: Container(
              //       height: 50,
              //       width: Get.width,
              //       child: TextField(
              //         decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(8),
              //               borderSide: BorderSide.none,
              //             ),
              //             hintText: "Content Detail(s)",
              //             hintStyle: GoogleFonts.montserrat(
              //                 fontSize: 16,
              //                 color: ColorResources.SHADOWGARGOYLE,
              //                 fontWeight: FontWeight.normal),
              //             filled: true,
              //             fillColor: ColorResources.BELUGA,
              //             suffix: const Icon(Icons.add)),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                //COD Amount in USD
                height: 2,
              ),
              Obx(
                () => Visibility(
                  visible: shipmentDetailsController.dropdownDataVisible.value,
                  child: Container(
                    height: 50,
                    width: Get.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "COD Amount in USD",
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: ColorResources.SHADOWGARGOYLE,
                            fontWeight: FontWeight.normal),
                        filled: true,
                        fillColor: ColorResources.BELUGA,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 2),

              Obx(() => Visibility(
                    visible:
                        shipmentDetailsController.dropdownDataVisible.value,
                    child: Container(
                      width: Get.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: ColorResources.BELUGA,
                          borderRadius: BorderRadius.circular(8)),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButton(
                            value: shipmentDetailsController
                                .selectinvoiceOption.value,
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: ColorResources.SHADOWGARGOYLE),
                            onChanged: (newValue) {
                              shipmentDetailsController
                                  .changesinvoiceOption(newValue!);
                            },
                            items: shipmentDetailsController
                                .selectinvoiceDropdown
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  )),

              const SizedBox(height: 10),

              Container(
                height: 50,
                width: Get.width,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Special Instructions",
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
              Text(
                "Upload Content Pics and max limit 10",
                style: GoogleFonts.montserrat(
                    color: ColorResources.BLACKCOLOR,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Container(
                width: Get.width,
                // height: 80,
                decoration: BoxDecoration(
                  color: ColorResources.BELUGA,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        "Drop files here to Upload",
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: ColorResources.CAVERNOUS),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                          height: 34,
                          width: 34,
                          child: Image.asset(
                              "assets/Document_Uplaod_imgs/upload_img.png")),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Document Type",
                    style: GoogleFonts.montserrat(
                        color: ColorResources.BLACKCOLOR,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Text(
                      "Action",
                      style: GoogleFonts.montserrat(
                          color: ColorResources.BLACKCOLOR,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 30,
                    child: Obx(
                      () => Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: ColorResources.SONICSILVER,
                          value: shipmentDetailsController.ischeck.value,
                          onChanged: (value) {
                            shipmentDetailsController.enablecheck();
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    child: Text(
                      "Undertaking for Narcotics Banned Items",
                      style: GoogleFonts.montserrat(
                          color: ColorResources.SHADOWGARGOYLE),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    child: Obx(
                      () => Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          activeColor: ColorResources.SONICSILVER,
                          value: shipmentDetailsController.ischecked.value,
                          onChanged: (value) {
                            shipmentDetailsController.enablechecked();
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "I have read agree to ",
                    style: GoogleFonts.montserrat(
                        color: ColorResources.SHADOWGARGOYLE, fontSize: 13),
                  ),
                  Text(
                    "Shyp.AI terms and condition",
                    style: GoogleFonts.montserrat(
                        color: ColorResources.BLACKCOLOR,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
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
                      Get.dialog(AlertDialog(
                        backgroundColor: ColorResources.BLACKCOLOR,
                        contentPadding:
                            const EdgeInsets.only(top: 20, bottom: 40),
                        insetPadding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: InkWell(
                          onTap: () {
                            Get.to(ShipmentScreen());
                          },
                          child: Container(
                            width: Get.width,
                            child: const CircleAvatar(
                              radius: 70,
                              backgroundColor: ColorResources.SNOWFLAKE,
                              child: Padding(
                                padding: EdgeInsets.all(20), // Border radius
                                child: SizedBox(
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
                              "Your shipmet has been",
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
