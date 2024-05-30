import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Utilis/Colors/color_resource.dart';
import 'package:shyp_ai_app/Utilis/Custom%20Widgets/custom_widgets.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.WhiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorResources.WhiteColor,
        elevation: 0.0,
        // elevation: 0.0,
        title: SizedBox(
            height: 20,
            width: 120,
            child:
                Image.asset("assets/DashboardScreen_imgs/dashboard_logo.png")),

        actions: [
          Container(
              height: 20,
              width: 34,
              child:
                  Image.asset("assets/DashboardScreen_imgs/uil_calender.png")),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 20),
            child: InkWell(
              onTap: () {
                Get.toNamed(SideBarSreen.routeName);
              },
              child: const Icon(
                Icons.menu,
                color: ColorResources.BLACKCOLOR,
                size: 42,
                weight: 8,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image(image: AssetImage("assets/SplashScreen_imgs/Logo.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 54,
                      child:
                          // Image(
                          //     image: AssetImage(
                          //         "assets/DashboardScreen_imgs/profile_img.png")),
                          Image.asset(
                        "assets/DashboardScreen_imgs/profile_img.png",
                      )),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Shariq!",
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Good Morning",
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ColorResources.SHADOWEDSTEEL),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "Dashboard",
                style: GoogleFonts.montserrat(
                    fontSize: 33, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                "Monthly Shipment Summary",
                style: GoogleFonts.montserrat(
                    fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              ///  first graph start

              Container(
                decoration: BoxDecoration(
                    color: ColorResources.CALMWATERS,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "721",
                            style: GoogleFonts.montserrat(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Total Shipments",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: 300,
                              width: Get.width,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: BarChart(BarChartData(
                                  barGroups: [
                                    BarChartGroupData(x: 1086, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 1,
                                          width: 15,
                                          color: ColorResources
                                              .EXQUISITETURQUOISE),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 2,
                                          width: 15,
                                          color: ColorResources
                                              .EXQUISITETURQUOISE),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 3,
                                          width: 15,
                                          color: ColorResources
                                              .EXQUISITETURQUOISE),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 2,
                                          width: 15,
                                          color: ColorResources
                                              .EXQUISITETURQUOISE),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 3,
                                          width: 15,
                                          color: ColorResources
                                              .EXQUISITETURQUOISE),
                                    ]),
                                  ],
                                  borderData: FlBorderData(
                                    border: const Border(
                                        top: BorderSide.none,
                                        right: BorderSide.none,
                                        left: BorderSide.none,
                                        bottom: BorderSide.none),
                                  ),
// check conditon
                                  titlesData: const FlTitlesData(
                                    leftTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: true)),
                                    rightTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                    topTitles: AxisTitles(
                                        sideTitles:
                                            SideTitles(showTitles: false)),
                                    show: true,
                                  ),

// check condition

                                  groupsSpace: 10,
                                )),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),

// first graph end

              const SizedBox(height: 20),

              // second graph start

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorResources.WHITESOLID,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "115",
                            style: GoogleFonts.montserrat(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                              height: 40,
                              width: 40,
                              child: Image(
                                  image: AssetImage(
                                      "assets/DashboardScreen_imgs/checkr.png")))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Arrived",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Image.asset(
                    //   "assets/DashboardScreen_imgs/Vector_1.png",
                    //   width: 800,
                    //   fit: BoxFit.fitWidth,
                    // )

                    Container(
                      // padding: const EdgeInsets.all(10),
                      width: 400,
                      height: 160,
                      child: LineChart(
                        LineChartData(
                          backgroundColor: ColorResources.WHITESOLID,
                          gridData: const FlGridData(show: false),
                          titlesData: const FlTitlesData(show: false),
                          borderData: FlBorderData(
                            show: false,
                            // border: Border.all(
                            //   color: const Color(0xff37434d),
                            //   width: 1,
                            // ),
                          ),
                          minX: 0,
                          maxX: 5,
                          minY: 0,
                          maxY: 6,
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                const FlSpot(0, 2),
                                const FlSpot(1, 1),
                                const FlSpot(2, 4),
                                const FlSpot(3, 2),
                                const FlSpot(4, 5),
                                const FlSpot(5, 4),
                                // const FlSpot(6, 4),
                              ],
                              isCurved: true,
                              color: ColorResources.ChromeYellow,
                              dotData: const FlDotData(show: false),
                              belowBarData: BarAreaData(
                                  show: true,
                                  color: ColorResources.COTTONFLUFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // second graph end

              const SizedBox(height: 20),

              // third graph start

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorResources.WHITESOLID,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "423",
                            style: GoogleFonts.montserrat(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                              height: 40,
                              width: 40,
                              child: Image(
                                  image: AssetImage(
                                      "assets/DashboardScreen_imgs/checkrtwo.png")))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Delivered",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Image.asset(
                    //   "assets/DashboardScreen_imgs/Vector_1.png",
                    //   width: 800,
                    //   fit: BoxFit.fitWidth,
                    // )

                    Container(
                      // padding: const EdgeInsets.all(10),
                      width: 400,
                      height: 160,
                      child: LineChart(
                        LineChartData(
                          backgroundColor: ColorResources.WHITESOLID,
                          gridData: const FlGridData(show: false),
                          titlesData: const FlTitlesData(show: false),
                          borderData: FlBorderData(
                            show: false,
                            // border: Border.all(
                            //   color: const Color(0xff37434d),
                            //   width: 1,
                            // ),
                          ),
                          minX: 0,
                          maxX: 5,
                          minY: 0,
                          maxY: 6,
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                const FlSpot(0, 2),
                                const FlSpot(1, 1),
                                const FlSpot(2, 4),
                                const FlSpot(3, 2),
                                const FlSpot(4, 5),
                                const FlSpot(5, 4),
                                // const FlSpot(6, 4),
                              ],
                              isCurved: true,
                              color: ColorResources.KARIMUNBLUE,
                              dotData: const FlDotData(show: false),
                              belowBarData: BarAreaData(
                                  show: true, color: ColorResources.MOONWHITE),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

// third graph end

              const SizedBox(height: 20),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // height: 150,
                        // width: 168,
                        height: 160,
                        width: 174,
                        decoration: BoxDecoration(
                            color: ColorResources.WHITESOLID,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const SizedBox(height: 14),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 40,
                                  child: Image.asset(
                                      "assets/DashboardScreen_imgs/arrived_img.png")),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "912",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Not Arrived",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: ColorResources.SHADOWEDSTEEL),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        width: 174,
                        decoration: BoxDecoration(
                            color: ColorResources.WHITESOLID,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const SizedBox(height: 14),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 40,
                                  child: Image.asset(
                                      "assets/DashboardScreen_imgs/delivery_img.png")),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "450",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Out of Delivery",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: ColorResources.SHADOWEDSTEEL),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 160,
                        width: 174,
                        decoration: BoxDecoration(
                            color: ColorResources.WHITESOLID,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const SizedBox(height: 14),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 40,
                                  child: Image.asset(
                                      "assets/DashboardScreen_imgs/return_img.png")),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "09",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Returned",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: ColorResources.SHADOWEDSTEEL),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        width: 174,
                        decoration: BoxDecoration(
                            color: ColorResources.WHITESOLID,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const SizedBox(height: 14),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 40,
                                  child: Image.asset(
                                      "assets/DashboardScreen_imgs/fl_attempt_img.png")),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "80",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Failed Attempt",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  color: ColorResources.SHADOWEDSTEEL),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
// fourth graph end

              const SizedBox(height: 30),
              Text(
                "Shipments Details of Country",
                style: GoogleFonts.montserrat(
                    fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
// UAE graph

              Container(
                decoration: BoxDecoration(
                    color: ColorResources.WHITESOLID,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "UAE",
                            style: GoogleFonts.montserrat(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Total Shipments 120",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Shipment from last 6 Month",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: ColorResources.SHADOWEDSTEEL,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            // padding: EdgeInsets.all(10),
                            width: Get.width,
                            height: 200,
                            child: LineChart(
                              LineChartData(
                                // backgroundColor: Colors.amber,
                                gridData: const FlGridData(show: true),
                                titlesData: const FlTitlesData(
                                  leftTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  rightTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  show: true,
                                ),
                                borderData: FlBorderData(
                                  show: false,
                                  // border: Border.all(
                                  //   color: const Color(0xff37434d),
                                  //   width: 1,
                                  // ),
                                ),
                                minX: 0,
                                maxX: 6,
                                minY: 0,
                                maxY: 6,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 3),
                                      FlSpot(1, 1),
                                      FlSpot(2, 4),
                                      FlSpot(3, 2),
                                      FlSpot(4, 5),
                                      FlSpot(5, 1),
                                      FlSpot(6, 4),
                                    ],
                                    isCurved: false,
                                    color: ColorResources.BORAGEBLUE,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                      show: false,
                                      //  color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
// UAE END

              const SizedBox(height: 20),

// USA START

              Container(
                decoration: BoxDecoration(
                    color: ColorResources.WHITESOLID,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "USA",
                            style: GoogleFonts.montserrat(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Total Shipments 310",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Shipment from last 6 Month",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: ColorResources.SHADOWEDSTEEL,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            // padding: EdgeInsets.all(10),
                            width: Get.width,
                            height: 200,
                            child: LineChart(
                              LineChartData(
                                // backgroundColor: Colors.amber,
                                gridData: const FlGridData(show: true),
                                titlesData: const FlTitlesData(
                                  leftTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  rightTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  show: true,
                                ),
                                borderData: FlBorderData(
                                  show: false,
                                  // border: Border.all(
                                  //   color: const Color(0xff37434d),
                                  //   width: 1,
                                  // ),
                                ),
                                minX: 0,
                                maxX: 6,
                                minY: 0,
                                maxY: 6,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 3),
                                      FlSpot(1, 1),
                                      FlSpot(2, 4),
                                      FlSpot(3, 2),
                                      FlSpot(4, 5),
                                      FlSpot(5, 1),
                                      FlSpot(6, 4),
                                    ],
                                    isCurved: false,
                                    color: ColorResources.BORAGEBLUE,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                      show: false,
                                      //  color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),

// USA END

              const SizedBox(height: 20),

// QATAR START

              Container(
                decoration: BoxDecoration(
                    color: ColorResources.WHITESOLID,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Qatar",
                            style: GoogleFonts.montserrat(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Total Shipments 432",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Shipment from last 6 Month",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: ColorResources.SHADOWEDSTEEL,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            // padding: EdgeInsets.all(10),
                            width: Get.width,
                            height: 200,
                            child: LineChart(
                              LineChartData(
                                // backgroundColor: Colors.amber,
                                gridData: const FlGridData(show: true),
                                titlesData: const FlTitlesData(
                                  leftTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  rightTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  show: true,
                                ),
                                borderData: FlBorderData(
                                  show: false,
                                  // border: Border.all(
                                  //   color: const Color(0xff37434d),
                                  //   width: 1,
                                  // ),
                                ),
                                minX: 0,
                                maxX: 6,
                                minY: 0,
                                maxY: 6,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 3),
                                      FlSpot(1, 1),
                                      FlSpot(2, 4),
                                      FlSpot(3, 2),
                                      FlSpot(4, 5),
                                      FlSpot(5, 1),
                                      FlSpot(6, 4),
                                    ],
                                    isCurved: false,
                                    color: ColorResources.BORAGEBLUE,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                      show: false,
                                      //  color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),

// QATAR END
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: ColorResources.WHITESOLID,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   "721",
                          //   style: GoogleFonts.montserrat(
                          //       fontSize: 45, fontWeight: FontWeight.bold),
                          // ),
                          Text(
                            "Traffic by Location",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: 300,
                              width: Get.width,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: BarChart(BarChartData(
                                  barGroups: [
                                    BarChartGroupData(x: 1086, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 2,
                                          width: 18,
                                          color: ColorResources.WIDOWMAKER),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 2,
                                          width: 18,
                                          color: ColorResources.MINTPARFAIT),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 3,
                                          width: 18,
                                          color: ColorResources
                                              .EXQUISITETURQUOISE),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 2,
                                          width: 18,
                                          color:
                                              ColorResources.FROZENLANDSCAPE),
                                    ]),
                                    BarChartGroupData(x: 1278, barRods: [
                                      BarChartRodData(
                                          fromY: 0,
                                          toY: 3,
                                          width: 18,
                                          color: ColorResources.COLDMORNING),
                                    ]),
                                  ],
                                  borderData: FlBorderData(
                                    border: const Border(
                                        top: BorderSide.none,
                                        right: BorderSide.none,
                                        left: BorderSide.none,
                                        bottom: BorderSide.none),
                                  ),
                                  groupsSpace: 10,
                                )),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: ColorResources.WHITESOLID,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "Weekly Shipment Stats",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "5432,234 Shipment",
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: ColorResources.KETTLEMAN),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: CircularPercentIndicator(
                            radius: 148,
                            // backgroundColor: ColorResources.PURPLEHONEYCREEPER,
                            progressColor: ColorResources.PURPLEHONEYCREEPER,
                            arcBackgroundColor: ColorResources.PLACEBOPURPLE,
                            startAngle: 100,
                            lineWidth: 20,
                            arcType: ArcType.HALF,
                            percent: 0.7,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "8,345",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
