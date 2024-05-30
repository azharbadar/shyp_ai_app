import 'package:get/get.dart';

//Business type
class AddCustomerController extends GetxController {
  var BusinesstypeOption =
      "Business type".obs; // Initialize with a default value
  var dropdownOptions = ["Business type", "Wholesale", "Email"].obs;

  var CustomertypeOption =
      "Customer type".obs; // Initialize with a default value
  var CustomertypeOptionDropdown =
      ["Customer type", "Individual", "Company"].obs;

// others
// check for condition

  // var selectedOptiontwo =
  //     "Select PlatformTwo".obs; // Initialize with a default value
  // var dropdownOptionstwo =
  //     ["Select PlatformTwo", "Option two", "Option three"].obs;

  // var statusOptiontwo =
  //     "Select Status two".obs; // Initialize with a default value
  // var statusOptionDropdowntwo =
  //     ["Select Status two", "Select Status three", "Select Status four"].obs;

  // check for condition

// others

  void changeBussinessOption(String option) {
    BusinesstypeOption.value = option;
  }

  void changeCustomertypeOption(String option) {
    CustomertypeOption.value = option;
  }
}
