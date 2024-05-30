import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Screens/Customer%20Screen/customer_screen.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';

import 'package:shyp_ai_app/Screens/Shipments%20Sreen/shipment_screen.dart';
import 'package:shyp_ai_app/Screens/Tracking%20Screen/tracking_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class SideBarSreen extends StatelessWidget {
  static const String routeName = '/sidebar';
  const SideBarSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.ScaffoldColor,
      appBar: AppBar(
        backgroundColor: ColorResources.ScaffoldColor,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.clear,
                color: ColorResources.WhiteColor,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 64,
                    child: Image.asset(
                      "assets/DashboardScreen_imgs/profile_img.png",
                    )),
                const SizedBox(width: 14),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AZHAR DIN",
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: ColorResources.WhiteColor),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "azharud27@gmail.com",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorResources.OROCHIMARU),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 60),
            InkWell(
              onTap: () {
                Get.toNamed(CustomerScreen.routeName);
              },
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                dense: true,
                leading: Container(
                  height: 40,
                  width: 34,
                  child: const Image(
                      image: AssetImage(
                          "assets/SideBarScreen_img/profile_img.png")),
                ),
                title: const Text(
                  "Customer",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.WhiteColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(const ShipmentScreen());
              },
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                dense: true,
                leading: Container(
                  height: 40,
                  width: 34,
                  child: const Image(
                      image: AssetImage(
                          "assets/SideBarScreen_img/booksheet_img.png")),
                ),
                title: const Text(
                  "Book Shipment",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.WhiteColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(const TrackingScreen());
              },
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                dense: true,
                leading: Container(
                    height: 40,
                    width: 34,
                    child: Image.asset(
                        "assets/SideBarScreen_img/Tracking Icon.png")),
                title: const Text(
                  "Tracking",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.WhiteColor),
                ),
              ),
            ),
            Align(
              heightFactor: 7.6,
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.37,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(LoginScreen.routeName);
                  },
                  child: Text(
                    "Log Out",
                    style: GoogleFonts.montserrat(
                        color: ColorResources.BLACKCOLOR,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorResources.WhiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
