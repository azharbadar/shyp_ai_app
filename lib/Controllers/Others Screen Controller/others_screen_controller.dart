import 'package:get/get.dart';

class OthersController extends GetxController {
  var ischeck = false.obs;
  var customerOption = "Customer Status".obs; // Initialize with a default value
  var customerDropdown = [
    "Customer Status",
    "Customer Order Status",
    "Customer Recieving Status"
  ].obs;

  var selepersonOption = "Sale Person".obs; // Initialize with a default value
  var salepersonDropdown = ["Sale Person", "Customer", " Owner "].obs;

  var accounttypeOption = "Account Type".obs; // Initialize with a default value
  var accounttypeDropdown =
      ["Account Type", "Current Account", "Saving Account"].obs;

  //       var modpaymentOption =
  //     "Mod of Payment".obs; // Initialize with a default value
  // var modPaymentDropdown =
  //     ["Mod of Payment", "Mod of Payment Cash", "Mod of Payment Check"].obs;

  void changecustomerOption(String option) {
    customerOption.value = option;
  }

  void changesaleOption(String option) {
    selepersonOption.value = option;
  }

  void changeaccountOption(String option) {
    accounttypeOption.value = option;
  }

  void enablecheck() {
    ischeck.value = !ischeck.value;
  }
}
