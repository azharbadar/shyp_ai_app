import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class SendLinkScreen extends StatelessWidget {
  static const String routeName = '/sendlink';
  const SendLinkScreen({super.key});

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
          "Send Link",
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
                decoration: BoxDecoration(
                    color: ColorResources.BELUGA,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 16),
                  child: Text(
                    "Email",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: Get.width,
                decoration: BoxDecoration(
                    color: ColorResources.BELUGA,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 16),
                  child: Text(
                    "Mobile",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Get.dialog(AlertDialog(
                    backgroundColor: ColorResources.BLACKCOLOR,
                    contentPadding: const EdgeInsets.only(top: 20, bottom: 40),
                    insetPadding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    title: Container(
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
                          "Your email link has been send",
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
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: ColorResources.BLACKCOLOR,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "Send",
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorResources.WhiteColor),
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
