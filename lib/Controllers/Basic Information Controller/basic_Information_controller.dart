import 'package:get/get.dart';

// city
class BasicinformationController extends GetxController {
  var isDataVisible = false.obs;
  var isDataVisible2 = false.obs;
  var isDataVisible3 = false.obs;
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

  void toggleDataVisibility() {
    isDataVisible.value = !isDataVisible.value;
  }

  void toggleDataVisibility2() {
    isDataVisible2.value = !isDataVisible2.value;
  }

  void toggleDataVisibility3() {
    isDataVisible3.value = !isDataVisible3.value;
  }
}
