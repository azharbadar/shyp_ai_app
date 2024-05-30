import 'package:get/get.dart';

// city
class PrimaryContactController extends GetxController {
// province
  var selectdesignationOption =
      "Please Select Designation".obs; // Initialize with a default value
  var selectprovinceDropdown =
      ["Please Select Designation", "Software Engineer", "Doctor"].obs;

// others

  void changedesignationOption(String option) {
    selectdesignationOption.value = option;
  }
}
