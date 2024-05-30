import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shyp_ai_app/Controllers/OTP%20CONTROLLER/otp_controller.dart';
import 'package:shyp_ai_app/Screens/Create%20Password%20Screen/create_password_screen.dart';
import 'package:shyp_ai_app/Screens/Customer%20Screen/customer_screen.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';

class OtpScreen extends StatelessWidget {
  static const String routeName = '/otpscreen';
  OtpScreen({super.key});
  OtpController otpController = Get.put(OtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.ScaffoldColor,
        elevation: 0.0,
        leadingWidth: 28,
        title: Text(
          "OTP",
          style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorResources.WhiteColor),
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: SizedBox(
        //       height: 24,
        //       child: InkWell(
        //           onTap: () {
        //             Get.back();
        //           },
        //           child: Image.asset(
        //             "assets/CustomerScreen_img/arr.png",
        //             color: ColorResources.WhiteColor,
        //           ))),
        // ),
      ),
      backgroundColor: ColorResources.ScaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  height: 220,
                  width: 220,
                  child: Image.asset("assets/Otp_Screen_imgs/otp_img.png")),
            ),
            const SizedBox(height: 12),
            Text(
              "Code is sent to 03113294921\nDidn’t receive code? Request Again",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: ColorResources.OROCHIMARU,
              ),
            ),
            const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       height: 40,
            //       width: 40,
            //       child: TextField(
            //         keyboardType: TextInputType.number,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(8),
            //             borderSide: BorderSide.none,
            //           ),
            //           // hintText: "2",
            //           hintStyle: GoogleFonts.montserrat(
            //               fontSize: 40,
            //               color: ColorResources.SHADOWGARGOYLE,
            //               fontWeight: FontWeight.bold),
            //           filled: true,
            //           fillColor: ColorResources.BELUGA,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 8),
            //     Container(
            //       height: 40,
            //       width: 40,
            //       child: TextField(
            //         keyboardType: TextInputType.number,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(8),
            //             borderSide: BorderSide.none,
            //           ),
            //           // hintText: "2",
            //           hintStyle: GoogleFonts.montserrat(
            //               fontSize: 40,
            //               color: ColorResources.SHADOWGARGOYLE,
            //               fontWeight: FontWeight.bold),
            //           filled: true,
            //           fillColor: ColorResources.BELUGA,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 8),
            //     Container(
            //       height: 40,
            //       width: 40,
            //       child: TextField(
            //         keyboardType: TextInputType.number,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(8),
            //             borderSide: BorderSide.none,
            //           ),
            //           // hintText: "2",
            //           hintStyle: GoogleFonts.montserrat(
            //               fontSize: 40,
            //               color: ColorResources.SHADOWGARGOYLE,
            //               fontWeight: FontWeight.bold),
            //           filled: true,
            //           fillColor: ColorResources.BELUGA,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 8),
            //     Container(
            //       height: 40,
            //       width: 40,
            //       child: TextField(
            //         keyboardType: TextInputType.number,
            //         decoration: InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(8),
            //             borderSide: BorderSide.none,
            //           ),
            //           // hintText: "2",
            //           hintStyle: GoogleFonts.montserrat(
            //               fontSize: 40,
            //               color: ColorResources.SHADOWGARGOYLE,
            //               fontWeight: FontWeight.bold),
            //           filled: true,
            //           fillColor: ColorResources.BELUGA,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            // check conditon

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: 55,
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: TextField(
                      controller: otpController.otpControllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      onChanged: (value) =>
                          otpController.onOtpChange(value, index),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: ColorResources.WhiteColor,
                        counter: Offstage(), // Hide the character count
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: otpController.onOtpButtonClick,
            //   child: const Text('Verify OTP'),
            // ),
            // check condition

            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Navigator.of(context).pop(CreatePasswordScreen());
                // Navigator.of(context).pop(CustomerScreen());
                // Navigator.of(context).pop();
                otpController.onOtpButtonClick();
                Get.dialog(AlertDialog(
                  backgroundColor: ColorResources.BLACKCOLOR,
                  contentPadding: const EdgeInsets.only(top: 20, bottom: 40),
                  insetPadding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  title: Container(
                    width: Get.width,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: ColorResources.SNOWFLAKE,
                      child: Padding(
                        padding: const EdgeInsets.all(20), // Border radius
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(CreatePasswordScreen.routeName);
                          },
                          child: const SizedBox(
                            height: 50,
                            width: 50,
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
                        "Verified!",
                        style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: ColorResources.WhiteColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Asad, You have succesfully\nverified the account.",
                        textAlign: TextAlign.center,
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
                // width: 140,

                width: MediaQuery.of(context).size.width * 0.37,
                decoration: BoxDecoration(
                    color: ColorResources.WhiteColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Verify",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
