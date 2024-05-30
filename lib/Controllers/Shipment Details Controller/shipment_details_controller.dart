import 'package:flutter/material.dart';
import 'package:get/get.dart';

// city
class ShipmentDetailsController extends GetxController {
  // visivility  variable

  var dropdownDataVisible = false.obs;
  // checks
  var ischeck = false.obs;
  var ischecked = false.obs;
  // checks
  var selectcontentOption =
      "Please Select Content".obs; // Initialize with a default value
  var selectcontentDropdown =
      ["Please Select Content", "Parcel", "content"].obs;

  var selectshipmentOption =
      "Prupose of Shipment".obs; // Initialize with a default value
  var selectshipmentDropdown =
      ["Prupose of Shipment", "shipment", "customer"].obs;

// Custom Invoice Details: *
  var selectinvoiceOption =
      "Custom Invoice Details".obs; // Initialize with a default value
  var selectinvoiceDropdown =
      ["Custom Invoice Details", "initialize", "invoice"].obs;

// shipment dialogue alert first packaging

  var selectpackgingOption =
      "Select Packaging".obs; // Initialize with a default value
  var selectpackgingDropdown =
      ["Select Packaging", "Packaging", "connection"].obs;

//  shipmemt alert  dialogue two packaging

  var selectdetailOption =
      "Custom Invoice Details".obs; // Initialize with a default value
  var selectdetailDropdown =
      ["Custom Invoice Details", "transport", "goverment"].obs;

//   shipment alert content

  var selectcategoryOption =
      "Please Select".obs; // Initialize with a default value
  var selectcategoryDropdown = ["Please Select", "Packaging", "connection"].obs;

  var selectcountryOption = "Country".obs; // Initialize with a default value
  var selectcountryDropdown = ["Country", "Pakistan", "Asia"].obs;

  void changecountryOption(String option) {
    selectcountryOption.value = option;
  }

  void changecontentOption(String option) {
    selectcontentOption.value = option;
  }

  void changeshipmentOption(String option) {
    selectshipmentOption.value = option;
  }

  void changesinvoiceOption(String option) {
    selectinvoiceOption.value = option;
  }

// alert  packaging

  void changepackagingOption(String option) {
    selectpackgingOption.value = option;
  }

  void changedetailOption(String option) {
    selectdetailOption.value = option;
  }

  // alert content

  void changecategoryOption(String option) {
    selectcategoryOption.value = option;
  }

// dropdown visibility

  void dropdownDataVisibility() {
    dropdownDataVisible.value = !dropdownDataVisible.value;
  }

  // checks function

  void enablecheck() {
    ischeck.value = !ischeck.value;
    // ischecked.value = false;
  }

  void enablechecked() {
    ischecked.value = !ischecked.value;
    // ischeck.value = false;
  }
}
