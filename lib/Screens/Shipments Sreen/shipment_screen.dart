import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Custom%20Widget/custom_widget.dart';
import 'package:shyp_ai_app/Screens/Book%20Shipment%20Screen/book_shipment_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class ShipmentScreen extends StatelessWidget {
  // static const String routeName = '/termconditionscreen';
  static const String routeName = '/shipmentscreen';
  const ShipmentScreen({super.key});

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
          "Shipments",
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorResources.BLACKCOLOR),
        ),
        actions: [
          Container(
              height: 20,
              width: 34,
              child:
                  Image.asset("assets/DashboardScreen_imgs/uil_calender.png")),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 600,
                child: ListView.builder(
                  itemCount: shipmentlist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 302,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: ColorResources.BELUGA),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                obscureText: false,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: ColorResources.BELUGA,
                                    border: InputBorder.none,
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: ColorResources.BELUGA)),
                                    hintText: "Search",
                                    // contentPadding:
                                    //     const EdgeInsets.only(top: 10, left: 8),
                                    hintStyle: GoogleFonts.montserrat(
                                        color: ColorResources.SHADOWGARGOYLE,
                                        fontSize: 15),
                                    prefix: SizedBox(
                                        height: 20,
                                        child: Image.asset(
                                            "assets/CustomerScreen_img/search_icon.png"))),
                              ),
                            ),
                            Container(
                                height: 34,
                                width: 34,
                                child: Image.asset(
                                    "assets/ShipmentsScreen_imgs/filter_icon.png")),
                          ],
                        ),

                        // first expansionlistile
                        const SizedBox(height: 20),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            InkWell(
                                              onTap: () {
                                                // dialogue start

                                                Get.dialog(AlertDialog(
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          top: 16, bottom: 32),
                                                  insetPadding:
                                                      const EdgeInsets.all(24),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  title: Container(
                                                    width: Get.width,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: InkWell(
                                                                onTap: () {
                                                                  Get.back();
                                                                },
                                                                child: const Icon(
                                                                    Icons
                                                                        .close_outlined))),
                                                        const SizedBox(
                                                            height: 10),
                                                        Text("Shipment Details",
                                                            style: GoogleFonts.montserrat(
                                                                fontSize: 18,
                                                                color: ColorResources
                                                                    .BLACKCOLOR,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)),
                                                      ],
                                                    ),
                                                  ),
                                                  scrollable: true,
                                                  content:
                                                      SingleChildScrollView(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 20),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "Destination Country",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Bahrain",
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Sender Details",
                                                              style: GoogleFonts.montserrat(
                                                                  fontSize: 18,
                                                                  color: ColorResources
                                                                      .BLACKCOLOR,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Text("Name",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Asif",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Text("Businee Name",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Businee Name",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Address Line 1",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Address Line 1",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Address Line 2",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Address Line 2",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("City",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "City",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("State/Province",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "State/Province",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Country",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Country",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text(
                                                              "Zip/Postal Code",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Zip/Postal Code",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Area",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Area",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Mobile",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Mobile",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Landline",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Landline",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("CNIC/NTN",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "CNIC/NTN",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Shipper's Ref",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Shipper's Ref",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text(
                                                              "Reciever Details",
                                                              style: GoogleFonts.montserrat(
                                                                  fontSize: 18,
                                                                  color: ColorResources
                                                                      .BLACKCOLOR,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Name",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Asif",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Text("Attention",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Attention",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Text("Address 1",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Address 1",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Text("Address 2",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Address 2",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("City",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "City",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("State/Province",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "State/Province",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Zip Code",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Zip Code",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Area",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Area",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text(
                                                              "Landline Number",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Landline Number",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Mobile Number",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Mobile Number",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Email",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Email",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text(
                                                              "Shipment Details",
                                                              style: GoogleFonts.montserrat(
                                                                  fontSize: 18,
                                                                  color: ColorResources
                                                                      .BLACKCOLOR,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text("Content",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Content",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text(
                                                              "Special Instructions",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Special Instructions",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 30,
                                                                        left:
                                                                            16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          Text(
                                                              "Upload Content Pics",
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                          const SizedBox(
                                                              height: 10),
                                                          Container(
                                                            // height: 50,
                                                            width: Get.width,
                                                            child: TextField(
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none,
                                                                ),
                                                                hintText:
                                                                    "Upload Content Pics",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        30),
                                                                // .only(
                                                                // top: 30,
                                                                // left:
                                                                //     16),
                                                                hintStyle: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color: ColorResources
                                                                        .SHADOWGARGOYLE,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                filled: true,
                                                                fillColor:
                                                                    ColorResources
                                                                        .BELUGA,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ));

                                                // dialogue end
                                              },
                                              child: Text(
                                                shipmentlist[index].viewmore,
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: ColorResources
                                                        .SHADOWGARGOYLE),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),

                        // second expansionlistile

                        const SizedBox(height: 10),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            Text(
                                              shipmentlist[index].viewmore,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: ColorResources
                                                      .SHADOWGARGOYLE),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),

                        // third  expansionlisttile

                        const SizedBox(height: 10),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            Text(
                                              shipmentlist[index].viewmore,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: ColorResources
                                                      .SHADOWGARGOYLE),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),
// fourth expansionlistile
                        const SizedBox(height: 10),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            Text(
                                              shipmentlist[index].viewmore,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: ColorResources
                                                      .SHADOWGARGOYLE),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),
// fifth expansioonlisttile
                        const SizedBox(height: 10),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            Text(
                                              shipmentlist[index].viewmore,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: ColorResources
                                                      .SHADOWGARGOYLE),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),

// sixth expansionlisttile

                        const SizedBox(height: 10),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            Text(
                                              shipmentlist[index].viewmore,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: ColorResources
                                                      .SHADOWGARGOYLE),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),

                        // seventh expansionlisttile

                        const SizedBox(height: 10),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            Text(
                                              shipmentlist[index].viewmore,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: ColorResources
                                                      .SHADOWGARGOYLE),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),

                        // eight expansionlisttile

                        const SizedBox(height: 10),
                        Container(
                            // margin:  EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                                color: ColorResources.BELUGA,
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(color: ColorResources.BELUGA)),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Text(
                                    shipmentlist[index].shipmentno,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: ColorResources.BLACKCOLOR),
                                  ),
                                  const SizedBox(width: 54),
                                  Text(
                                    shipmentlist[index].number,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        color: ColorResources.SHADOWGARGOYLE),
                                  ),
                                ],
                              ),
                              trailing: Icon(
                                shipmentlist[index].icon,
                                size: 28,
                                color: ColorResources.BLACKCOLOR,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].shipmenttext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].shipmentdata,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].sender,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 54),
                                          Text(
                                            shipmentlist[index].sendername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].receiver,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 36),
                                          Text(
                                            shipmentlist[index].receivername,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].destination,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 34),
                                          Text(
                                            shipmentlist[index].destinationcity,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].country,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 100),
                                          Text(
                                            shipmentlist[index].countryloc,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].pieces,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 112),
                                          Text(
                                            shipmentlist[index].piecesno,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].dimweight,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 66),
                                          Text(
                                            shipmentlist[index].dimnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].declaredvalue,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 40),
                                          Text(
                                            shipmentlist[index].declarednumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].codtext,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 128),
                                          Text(
                                            shipmentlist[index].codnumber,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            shipmentlist[index].status,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    ColorResources.BLACKCOLOR),
                                          ),
                                          const SizedBox(width: 110),
                                          Text(
                                            shipmentlist[index].booked,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: ColorResources
                                                    .SHADOWGARGOYLE),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 14),
                                      Container(
                                        width: Get.width,
                                        child: Row(
                                          children: [
                                            Text(
                                              shipmentlist[index].action,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorResources
                                                      .BLACKCOLOR),
                                            ),
                                            const SizedBox(width: 108),
                                            Text(
                                              shipmentlist[index].viewmore,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  color: ColorResources
                                                      .SHADOWGARGOYLE),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16)
                              ],
                            )),
                      ],
                    );
                  },
                ),
              ),
              // const SizedBox(height: 20),
              // InkWell(
              //   onTap: () => Get.to(BookShipmentScreen()),
              //   child: Container(
              //     height: 48,
              //     width: Get.width,
              //     decoration: BoxDecoration(
              //         color: ColorResources.BLACKCOLOR,
              //         borderRadius: BorderRadius.circular(8)),
              //     child: Center(
              //       child: Text(
              //         "Book Shipment",
              //         style: GoogleFonts.montserrat(
              //             fontSize: 16, color: ColorResources.WhiteColor),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () => Get.to(BookShipmentScreen()),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            child: Container(
              height: 48,
              width: Get.width,
              decoration: BoxDecoration(
                  color: ColorResources.BLACKCOLOR,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Book Shipment",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, color: ColorResources.WhiteColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
