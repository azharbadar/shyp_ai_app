import 'package:flutter/material.dart';
import 'package:get/get.dart';

// city
class SenderDetailsController extends GetxController {
  // country picker
  TextEditingController phoneNumberController = TextEditingController();
  RxString selectedCountryCode = RxString('PK'); // Set the default country code

  var selectcityOption = "Select City".obs; // Initialize with a default value
  var selectcityDropdown = ["Select City", "karachi", "lahore"].obs;
// province
  var selectprovinceOption =
      "State/Province".obs; // Initialize with a default value
  var selectprovinceDropdown = ["State/Province", "Sindh", "Punjab"].obs;
//
  var selectcountryOption = "Country".obs; // Initialize with a default value
  var selectcountryDropdown = ["Country", "Pakistan", "Asia"].obs;

  var selectsectorOption = "Sector".obs; // Initialize with a default value
  var selectsectorDropdown = ["Sector", "Sector A", "Sector B"].obs;
// others

  var selectcnicOption = "CNIC/NTN".obs; // Initialize with a default value
  var selectcnicDropdown = ["CNIC/NTN", "Email", "verify cnic"].obs;

  void changecityOption(String option) {
    selectcityOption.value = option;
  }

  void changeprovinceOption(String option) {
    selectprovinceOption.value = option;
  }

  void changecountryOption(String option) {
    selectcountryOption.value = option;
  }

  void changesectorOption(String option) {
    selectsectorOption.value = option;
  }

  void changecnicOption(String option) {
    selectcnicOption.value = option;
  }

// country picker
  @override
  void onClose() {
    phoneNumberController.dispose();
    super.onClose();
  }
}
