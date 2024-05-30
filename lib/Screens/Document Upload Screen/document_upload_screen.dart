import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Screens/Bank%20Details%20Screen/bank_details_screen.dart';
import 'package:shyp_ai_app/Screens/Customer%20Screen/customer_screen.dart';
import 'package:shyp_ai_app/Screens/Others%20Screen/others_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class DocumentUploadScreen extends StatelessWidget {
  static const String routeName = '/documentupload';

  const DocumentUploadScreen({super.key});

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
        title: Text(
          "Document Upload",
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
                        "Upload NTN Copy",
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
                    onTap: () => Get.to(OtherScreen()),
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
