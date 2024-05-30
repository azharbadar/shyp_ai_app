import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Custom%20Widget/custom_widget.dart';
import 'package:shyp_ai_app/Screens/AddCustomer%20Details%20Screen/addcustomer_details_screen.dart';
import 'package:shyp_ai_app/Screens/Dashboard%20Screen/dashboard_screen.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class CustomerScreen extends StatelessWidget {
  static const String routeName = '/customer';
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.WhiteColor,
        elevation: 0.0,
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

        title: Text(
          "Customer",
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
          // physics: ScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Container(
              //   height: 60,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8),
              //       color: ColorResources.BELUGA),
              //   child: TextField(
              //     obscureText: false,
              //     decoration: InputDecoration(
              //         filled: true,
              //         fillColor: ColorResources.BELUGA,
              //         border: InputBorder.none,
              //         focusedBorder: const OutlineInputBorder(
              //             borderSide: BorderSide(color: ColorResources.BELUGA)),
              //         hintText: "Search",
              //         hintStyle: GoogleFonts.montserrat(
              //             color: ColorResources.SHADOWGARGOYLE, fontSize: 15),
              //         suffix: SizedBox(
              //             height: 26,
              //             child: Image.asset(
              //                 "assets/CustomerScreen_img/search_icon.png"))),
              //   ),
              // ),
              // const SizedBox(height: 20),

              Container(
                height: 620,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: Customerlist.length,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          // expansionlist start First

                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorResources.BELUGA),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: ColorResources.BELUGA,
                                  border: InputBorder.none,
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorResources.BELUGA)),
                                  hintText: "Search",
                                  contentPadding: const EdgeInsets.all(10),
                                  hintStyle: GoogleFonts.montserrat(
                                      color: ColorResources.SHADOWGARGOYLE,
                                      fontSize: 15),
                                  suffix: SizedBox(
                                      height: 26,
                                      child: Image.asset(
                                          "assets/CustomerScreen_img/search_icon.png"))),
                            ),
                          ),
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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                InkWell(
                                                  onTap: () {
                                                    /// start dailogue
                                                    ///

                                                    Get.dialog(AlertDialog(
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                              top: 16,
                                                              bottom: 32),
                                                      insetPadding:
                                                          const EdgeInsets.all(
                                                              24),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
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
                                                            Text("Asif Details",
                                                                style: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        18,
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
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      20),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "Business Type",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "E-commerce",
                                                                    hintStyle: GoogleFonts.montserrat(
                                                                        fontSize:
                                                                            16,
                                                                        color: ColorResources
                                                                            .SHADOWGARGOYLE,
                                                                        fontWeight:
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Customer Type",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Individual",
                                                                    hintStyle: GoogleFonts.montserrat(
                                                                        fontSize:
                                                                            16,
                                                                        color: ColorResources
                                                                            .SHADOWGARGOYLE,
                                                                        fontWeight:
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Basic Information",
                                                                  style: GoogleFonts.montserrat(
                                                                      fontSize:
                                                                          18,
                                                                      color: ColorResources
                                                                          .BLACKCOLOR,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text("Full Name",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Azhar",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Businee Name",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Businee Name",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Address Line 1",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Address Line 1",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Address Line 2",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Address Line 2",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("City",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "City",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "State/Province",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "State/Province",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("Country",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Country",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("Mobile",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Mobile",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("Landline",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Landline",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("Email",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Email",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("CNIC/NTN",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "CNIC/NTN",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("Sector",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Sector",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Secondary Details",
                                                                  style: GoogleFonts.montserrat(
                                                                      fontSize:
                                                                          18,
                                                                      color: ColorResources
                                                                          .BLACKCOLOR,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text("Full Name",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Azhar",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text("Email",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Email",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Phone Number",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Phone Number",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Please Select",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Please Select",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Bank Details",
                                                                  style: GoogleFonts.montserrat(
                                                                      fontSize:
                                                                          18,
                                                                      color: ColorResources
                                                                          .BLACKCOLOR,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Payment Cycle",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Payment Cycle",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Mobile of Payment",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Mobile of Payment",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Documents Details",
                                                                  style: GoogleFonts.montserrat(
                                                                      fontSize:
                                                                          18,
                                                                      color: ColorResources
                                                                          .BLACKCOLOR,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Utility Bills",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                // height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Utility Bills",
                                                                    // contentPadding: const EdgeInsets
                                                                    //     .only(
                                                                    //     top: 30,
                                                                    //     left:
                                                                    //         16),
                                                                    contentPadding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            25),
                                                                    hintStyle: GoogleFonts.montserrat(
                                                                        fontSize:
                                                                            16,
                                                                        color: ColorResources
                                                                            .SHADOWGARGOYLE,
                                                                        fontWeight:
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                  "Customer Status",
                                                                  style: GoogleFonts.montserrat(
                                                                      fontSize:
                                                                          18,
                                                                      color: ColorResources
                                                                          .BLACKCOLOR,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Customer Status",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Active",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        ColorResources
                                                                            .BELUGA,
                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Text(
                                                                  "Account Type",
                                                                  style: GoogleFonts.montserrat(
                                                                      color: ColorResources
                                                                          .SHADOWGARGOYLE,
                                                                      fontSize:
                                                                          16)),
                                                              const SizedBox(
                                                                  height: 10),
                                                              Container(
                                                                height: 50,
                                                                width:
                                                                    Get.width,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          BorderSide
                                                                              .none,
                                                                    ),
                                                                    hintText:
                                                                        "Account Type",
                                                                    contentPadding: const EdgeInsets
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
                                                                            FontWeight.normal),
                                                                    filled:
                                                                        true,
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

                                                    //  end dailogue
                                                  },
                                                  child: Text(
                                                    Customerlist[index]
                                                        .actiontxt,
                                                    style: GoogleFonts.montserrat(
                                                        fontSize: 14,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE),
                                                  ),
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

                          // expansion list end first

                          // two expansion list two

                          // expansionlist start

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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                Container(
                                                  child: Text(
                                                    Customerlist[index]
                                                        .actiontxt,
                                                    style: GoogleFonts.montserrat(
                                                        fontSize: 14,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE),
                                                  ),
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

                          // expansion list end

                          // expansionlist start

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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                Text(
                                                  Customerlist[index].actiontxt,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                      color: ColorResources
                                                          .SHADOWGARGOYLE),
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

                          // expansion list end

                          // expansionlist start

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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                Text(
                                                  Customerlist[index].actiontxt,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                      color: ColorResources
                                                          .SHADOWGARGOYLE),
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

                          // expansion list end

                          // expansionlist start

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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                Text(
                                                  Customerlist[index].actiontxt,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                      color: ColorResources
                                                          .SHADOWGARGOYLE),
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

                          // expansion list end

                          // expansionlist start

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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                Text(
                                                  Customerlist[index].actiontxt,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                      color: ColorResources
                                                          .SHADOWGARGOYLE),
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

                          // expansion list end

                          // expansionlist start

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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                Text(
                                                  Customerlist[index].actiontxt,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                      color: ColorResources
                                                          .SHADOWGARGOYLE),
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

                          // expansion list end

                          // expansionlist start

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
                                      Customerlist[index].Text1,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: ColorResources.BLACKCOLOR),
                                    ),
                                    const SizedBox(width: 70),
                                    Text(
                                      Customerlist[index].Text2,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: ColorResources.SHADOWGARGOYLE),
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Customerlist[index].icon,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  Customerlist[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 64),
                                                Text(
                                                  Customerlist[index].nametxt,
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
                                                  Customerlist[index].address,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 46),
                                                Text(
                                                  Customerlist[index]
                                                      .addressloc,
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
                                                  Customerlist[index].status,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 60),
                                                Text(
                                                  Customerlist[index].statustxt,
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
                                                  Customerlist[index].action,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorResources
                                                          .BLACKCOLOR),
                                                ),
                                                const SizedBox(width: 56),
                                                Text(
                                                  Customerlist[index].actiontxt,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 14,
                                                      color: ColorResources
                                                          .SHADOWGARGOYLE),
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

                          // expansion list end

                          // expansionlist start

                          const SizedBox(height: 10),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: Container(
                                // margin:  EdgeInsets.only(right: 0),
                                decoration: BoxDecoration(
                                  color: ColorResources.BELUGA,
                                  borderRadius: BorderRadius.circular(6),
                                  border:
                                      Border.all(color: ColorResources.BELUGA),
                                ),
                                child: ExpansionTile(
                                  title: Row(
                                    children: [
                                      Text(
                                        Customerlist[index].Text1,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.BLACKCOLOR),
                                      ),
                                      const SizedBox(width: 70),
                                      Text(
                                        Customerlist[index].Text2,
                                        style: GoogleFonts.montserrat(
                                            fontSize: 14,
                                            color:
                                                ColorResources.SHADOWGARGOYLE),
                                      ),
                                    ],
                                  ),
                                  trailing: Icon(
                                    Customerlist[index].icon,
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
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    Customerlist[index].name,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: ColorResources
                                                                .BLACKCOLOR),
                                                  ),
                                                  const SizedBox(width: 64),
                                                  Text(
                                                    Customerlist[index].nametxt,
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
                                                    Customerlist[index].address,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: ColorResources
                                                                .BLACKCOLOR),
                                                  ),
                                                  const SizedBox(width: 46),
                                                  Text(
                                                    Customerlist[index]
                                                        .addressloc,
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
                                                    Customerlist[index].status,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: ColorResources
                                                                .BLACKCOLOR),
                                                  ),
                                                  const SizedBox(width: 60),
                                                  Text(
                                                    Customerlist[index]
                                                        .statustxt,
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
                                                    Customerlist[index].action,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: ColorResources
                                                                .BLACKCOLOR),
                                                  ),
                                                  const SizedBox(width: 56),
                                                  Text(
                                                    Customerlist[index]
                                                        .actiontxt,
                                                    style: GoogleFonts.montserrat(
                                                        fontSize: 14,
                                                        color: ColorResources
                                                            .SHADOWGARGOYLE),
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
                          ),

                          // expansion list end
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              // InkWell(
              //   onTap: () => Get.to(AddCustomDetails()),
              //   child: Container(
              //     height: 48,
              //     width: Get.width,
              //     decoration: BoxDecoration(
              //         color: ColorResources.BLACKCOLOR,
              //         borderRadius: BorderRadius.circular(8)),
              //     child: Center(
              //       child: Text(
              //         "Add Customer Details",
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
          onTap: () => Get.toNamed(AddCustomDetails.routeName),
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
                  "Add Customer Details",
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
