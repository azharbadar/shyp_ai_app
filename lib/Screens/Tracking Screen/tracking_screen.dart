import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Screens/Tracking%20Details/tracking_details_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class TrackingScreen extends StatelessWidget {
  static const String routeName = '/trackingscreen';
  const TrackingScreen({super.key});

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
        title: Text(
          "Tracking",
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Track your shipment here",
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              Container(
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorResources.BELUGA),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorResources.BELUGA,
                      border: OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: ColorResources.BELUGA)),
                      hintText: "Search",
                      hintStyle: GoogleFonts.montserrat(
                        color: ColorResources.SHADOWGARGOYLE,
                        fontSize: 15,
                      ),
                      suffix: SizedBox(
                          height: 26,
                          child: Image.asset(
                              "assets/CustomerScreen_img/search_icon.png"))),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Multiple Tracking",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                "Enter Shipment Tracking Number CN Numbers) Seprate By Commas for Multiple",
                style: GoogleFonts.montserrat(
                    fontSize: 13, color: ColorResources.SHADOWGARGOYLE),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () => Get.to(const TrackingDetailsScreen()),
                child: Container(
                  height: 48,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorResources.BLACKCOLOR,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "Track",
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: ColorResources.WhiteColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
