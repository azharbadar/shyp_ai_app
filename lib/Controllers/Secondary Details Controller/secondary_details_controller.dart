import 'package:get/get.dart';

// city
class SecondaryDetailController extends GetxController {
// province
  var selectOption =
      "Please Select Designation".obs; // Initialize with a default value
  var selectDropdown = ["Please Select Designation", "Doctor", "Enginner"].obs;

// others

  void changeOption(String option) {
    selectOption.value = option;
  }
}
