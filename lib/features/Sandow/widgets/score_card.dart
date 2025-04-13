import 'dart:math';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreCard extends StatelessWidget {
  // bool isFatigue = Random().nextBool();
  int selectedNav = Random().nextInt(3);

  @override
  Widget build(BuildContext context) {
    List<Widget> typeRow = [
      _buildFatigue(),
      _buildNeedsRest(),
      _buildPower(),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: AspectRatio(
        aspectRatio: 340 / 125,
        child: FancyContainer(
          padding: EdgeInsets.all(8.0),
          backgroundColor: Colors.grey[200],
          isContinousBorder: true,
          radius: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Jan 23, 2025', // Replace with dynamic date if needed
                    style: TextStyle(fontSize: 14.0.w, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 2.0),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '81',
                          style: GoogleFonts.workSans(
                              fontSize: 30.0.w, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' pts',
                          style: TextStyle(fontSize: 18.0.w),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.0),
                  typeRow[selectedNav]
                  // (isFatigue) ? _buildFatigue() : _buildPower(),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      Text(
                        '11:12 AM', // Replace with dynamic time if needed
                        style: TextStyle(
                            fontSize: 14.0.w, color: Colors.grey[600]),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                          height: 15,
                          width: 15,
                          child: buildAppArrow(isLeft: false))
                      // ,Icon(Icons.chevron_right), // Or your desired icon
                    ],
                  ),
                  Expanded(
                    child: Image.asset(
                      chat[selectedNav],
                      // "assets/images/blueChart.png",
                      height: 61.h,
                      width: 125.w,
                    ),
                  )
                ],
              ),

              // Add your chart widget here
              // Example:
              // Container(
              //   width: 100, // Adjust width as needed
              //   height: 50, // Adjust height as needed
              //   child: YourChartWidget(), // Replace with your chart widget
              // ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> chat = [
    "assets/images/snadowHistoryChartNeedsRest.png",
    "assets/images/snadowHistoryChartFatigue.png",
    "assets/images/snadowHistoryChartPower.png"
  ];

  Row _buildFatigue() {
    return Row(
      children: <Widget>[
        Image.asset(
          "assets/images/snadowHistoryIconFatigue.png",
          height: 15,
          width: 15,
        ),
        // Icon(Icons.bolt,
        //     color: Colors.blue), // Or your desired icon
        SizedBox(width: 4.0),
        Text(
          'Fatigue', // Replace with dynamic text if needed
          style: TextStyle(fontSize: 14.0.w),
        ),
      ],
    );
  }

  Row _buildPower() {
    return Row(
      children: <Widget>[
        Image.asset(
          "assets/images/snadowHistoryIconPower.png",
          height: 15,
          width: 15,
        ),
        // Icon(Icons.bolt,
        //     color: Colors.blue), // Or your desired icon
        SizedBox(width: 4.0),
        Text(
          'Powerful', // Replace with dynamic text if needed
          style: TextStyle(fontSize: 14.0.w),
        ),
      ],
    );
  }

  Row _buildNeedsRest() {
    return Row(
      children: <Widget>[
        Image.asset(
          "assets/images/snadowHistoryIconNeedsRest.png",
          height: 15,
          width: 15,
        ),
        // Icon(Icons.bolt,
        //     color: Colors.blue), // Or your desired icon
        SizedBox(width: 4.0),
        Text(
          'Needs rest', // Replace with dynamic text if needed
          style: TextStyle(fontSize: 14.0.w),
        ),
      ],
    );
  }
}
