import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  List<TextEditingController> otpControllers =
      List.generate(4, (_) => TextEditingController());

  // Function to handle OTP input changes
  void onOtpChange(String value, int index) {
    if (value.length == 1 && index < otpControllers.length - 1) {
      // Move to the next text field
      FocusScope.of(Get.context!).nextFocus();
    }
  }

  // Function to get the complete OTP
  String getOtp() {
    return otpControllers.map((controller) => controller.text).join();
  }

  // Function to be triggered when the button is clicked
  void onOtpButtonClick() {
    String otp = getOtp();
    // You can add your logic here to handle the OTP, for example, verifying the OTP
    print('Entered OTP: $otp');
  }
}
