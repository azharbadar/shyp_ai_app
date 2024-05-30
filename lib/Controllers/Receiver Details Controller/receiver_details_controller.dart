import 'package:flutter/material.dart';
import 'package:get/get.dart';

// city
class ReceiverDetailsController extends GetxController {
  // country picker
  TextEditingController phoneNumberController = TextEditingController();
  RxString selectedCountryCode = RxString('PK'); // Set the default country code

  var selectcityOption = "Select City".obs; // Initialize with a default value
  var selectcityDropdown = ["Select City", "karachi", "lahore"].obs;

  void changecityOption(String option) {
    selectcityOption.value = option;
  }

  @override
  void onClose() {
    phoneNumberController.dispose();
    super.onClose();
  }
}
