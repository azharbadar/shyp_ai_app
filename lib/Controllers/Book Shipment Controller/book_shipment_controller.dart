import 'package:get/get.dart';

//Business type
class BookShipmentController extends GetxController {
  var countrydestinationOption =
      "Destination Country".obs; // Initialize with a default value
  var dropdownOptions = [
    "Destination Country",
    "Bahrain",
    "Kuwait",
    "Oman",
    "Qatar",
    "Saudia Arabia",
    "Japan"
  ].obs;

  void changeCountryOption(String option) {
    countrydestinationOption.value = option;
  }
}
