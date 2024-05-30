import 'package:flutter/material.dart';

class dashboardModel {
  final String arrive_img;
  final String arrive_num;
  final String arrive_txt;
  // final String del_img;
  // final String del_num;
  // final String del_txt;
  // final String ret_img;
  // final String ret_num;
  // final String ret_txt;
  // final String fail_img;
  // final String fail_num;
  // final String fail_txt;
  dashboardModel({
    required this.arrive_img,
    required this.arrive_num,
    required this.arrive_txt,
    // required this.del_img,
    // required this.del_num,
    // required this.del_txt,
    // required this.ret_img,
    // required this.ret_num,
    // required this.ret_txt,
    // required this.fail_img,
    // required this.fail_num,
    // required this.fail_txt,
  });
}

List<dashboardModel> dashboardlist = [
  // dashboardModel(
  //     arrive_img: "DashboardScreen_imgs/arrived_img.png",
  //     arrive_num: "912",
  //     arrive_txt: "Not Arrived",
  //     del_img: "DashboardScreen_imgs/delivery_img.png",
  //     del_num: "450",
  //     del_txt: "Out of Delivery",
  //     ret_img: "DashboardScreen_imgs/return_img.png",
  //     ret_num: "09",
  //     ret_txt: "Returned",
  //     fail_img: "DashboardScreen_imgs/fl_attempt_img.png",
  //     fail_txt: "Failed Attempt",
  //     fail_num: "80")
  dashboardModel(
    arrive_img: "DashboardScreen_imgs/arrived_img.png",
    arrive_num: "912",
    arrive_txt: "Not Arrived",
  ),
  dashboardModel(
    arrive_img: "DashboardScreen_imgs/delivery_img.png",
    arrive_num: "912",
    arrive_txt: "Not Arrived",
  ),
];
