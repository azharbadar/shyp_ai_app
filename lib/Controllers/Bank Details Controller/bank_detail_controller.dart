import 'package:get/get.dart';

class BankDetailController extends GetxController {
  var paymentOption = "Payment Cycle".obs; // Initialize with a default value
  var PaymentDropdown = [
    "Payment Cycle",
    "Payment Cycle purchase",
    "Payment Cycle receiving"
  ].obs;

  var modpaymentOption =
      "Mod of Payment".obs; // Initialize with a default value
  var modPaymentDropdown =
      ["Mod of Payment", "Mod of Payment Cash", "Mod of Payment Check"].obs;

  void changepaymentOption(String option) {
    paymentOption.value = option;
  }

  void changemodpaymentOption(String option) {
    modpaymentOption.value = option;
  }
}
