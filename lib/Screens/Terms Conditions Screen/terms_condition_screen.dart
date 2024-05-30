import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class TermConditionScreen extends StatelessWidget {
  static const String routeName = '/termconditionscreen';
  const TermConditionScreen({super.key});

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
          "Terms & Conditions",
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
                Get.offNamed(SideBarSreen.routeName);
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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Lorem Ipsum",
                style: GoogleFonts.montserrat(
                    color: ColorResources.BLACKCOLOR,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: GoogleFonts.montserrat(
                    color: ColorResources.SHADOWGARGOYLE,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              ),
              const SizedBox(height: 10),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: GoogleFonts.montserrat(
                    color: ColorResources.SHADOWGARGOYLE,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              ),
              const SizedBox(height: 10),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: GoogleFonts.montserrat(
                    color: ColorResources.SHADOWGARGOYLE,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
