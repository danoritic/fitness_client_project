import 'dart:math';

import 'package:dotted_line/dotted_line.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/dashed_lines.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/customs/rater_widget.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
export "overFlow_ofTestScreen.dart";
import 'package:easy_date_timeline/easy_date_timeline.dart'
    as easy_date_timeline;

// TestScreen
// CoachingSchedulePage
// CoachingSchedulePage

// assets/images/creditCardBG.png

// class TestScreen extends StatefulWidget {
//   const TestScreen({super.key});

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// backgroundColor: Colors.white,
// body:);
//   }
// }

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            _buildTopBar(context),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildDateSection(),
                    Row(
                      children: [
                        FancyText(
                          "All Appointments",
                          rawTextStyle: GoogleFonts.workSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        FancyText(
                          "Newest First",
                          rawTextStyle: GoogleFonts.workSans(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: getFigmaColor("676C75")),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                            height: 11,
                            child:
                                Image.asset("assets/images/wifiLike_logo.png")),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .65,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 50,
                              child: Center(
                                child: DottedLine(
                                  direction: Axis.vertical,
                                  alignment: WrapAlignment.center,
                                  lineLength: double.infinity,
                                  lineThickness: 1.0,
                                  dashLength: 4.0,
                                  dashColor: Colors.grey,
                                  // dashGradient: [Colors.red, Colors.blue],
                                  dashRadius: 0.0,
                                  dashGapLength: 4.0,
                                  dashGapColor: Colors.transparent,
                                  // dashGapGradient: [Colors.red, Colors.blue],
                                  dashGapRadius: 0.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 10),
                                child: FancyContainer(
                                  radius: 20,
                                  // height: 217,
                                  isContinousBorder: false,

                                  nulledAlign: true,
                                  backgroundColor: getFigmaColor("f3f3f4"),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0, vertical: 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.timer,
                                          size: 15,
                                        ),
                                        SizedBox(height: 5),
                                        FancyText("13:00",
                                            rawTextStyle: GoogleFonts.workSans(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            )
                                            // textColor: getFigmaColor("676C75"),
                                            ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FittedBox(
                                  child: FancyContainer(
                                    radius: 40,
                                    // height: 217,
                                    nulledAlign: true,
                                    backgroundColor: getFigmaColor("f3f3f4"),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            children: [
                                              FancyContainer(
                                                height: 30,
                                                width: 30,
                                                radius: 30,
                                                isContinousBorder: false,
                                                child: Image.asset(
                                                    "assets/images/maleCommentatorImage.png"),
                                              ),
                                              const SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  FancyText("Casca Smith",
                                                      rawTextStyle:
                                                          GoogleFonts.workSans(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      )
                                                      // textColor: getFigmaColor("676C75"),
                                                      ),
                                                  const SizedBox(height: 10),
                                                  _buildIconImage(),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          FancyContainer(
                                            backgroundColor: Colors.white,
                                            radius: 6,
                                            isContinousBorder: false,
                                            // width: double.infinity,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: FancyText(
                                                  "Upper Body Full Circuit Session 1",
                                                  rawTextStyle:
                                                      GoogleFonts.workSans(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: getFigmaColor(
                                                              "676C75"))
                                                  // textColor: getFigmaColor("676C75"),
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          _buildIconImageDotRepeat()
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
            // (
            //   initialDate: DateTime(2024, 3, 18),
            // )
//             (
//   focusedDate: _selectedDate,
//   firstDate: DateTime(2024, 3, 18),
//   lastDate: DateTime(2030, 3, 18),
//   onDateChange: (date) {
//     // Handle the selected date.
//     _selectedDate=date;
//     setState(() {

//     });
//   },
// )
          ],
        ));
  }

  Row _buildIconImageDotRepeat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child: Image.asset("assets/images/appIcon-calendarFilled.png")),
        const SizedBox(width: 5),
        FancyText(
          "10:25 - 11:35 AM",
          weight: FontWeight.w500,
          size: 10,
          textColor: getFigmaColor("676C75"),
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: getFigmaColor("D7D8D9"),
        ),
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child: Image.asset("assets/images/appIcon-dollar.png")),
        const SizedBox(width: 5),
        FancyText(
          "550 USD",
          weight: FontWeight.w500,
          size: 10,
          textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }

  Row _buildIconImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child: Image.asset("assets/images/insightIcon-dumbell.png")),
        const SizedBox(width: 5),
        FancyText(
          "Strength/CORE Expert",
          weight: FontWeight.w500,
          size: 12,
          textColor: getFigmaColor("676C75"),
        ),
      ],
    );
  }

  SizedBox _buildDateSection() {
    return SizedBox(
      height: 100,
      child: easy_date_timeline.EasyDateTimeLine(
        initialDate: DateTime(2024, 3, 18),
        headerProps: easy_date_timeline.EasyHeaderProps(showHeader: false),
        dayProps: easy_date_timeline.EasyDayProps(height: 80),
        itemBuilder:
            (context, dayNumber, dayName, monthName, fullDate, isSelected) {
          Widget content = FancyContainer(
            height: 100,
            width: 60,
            radius: 20,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("f3f3f4"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FancyText(
                  dayName,
                  size: 12,
                  weight: FontWeight.w600,
                  textColor: getFigmaColor("5D6A85"),
                ),
                FancyText(
                  dayNumber,
                  size: 20,
                  weight: FontWeight.w800,
                ),
                FancyContainer(
                  height: 6,
                  width: 6,
                  backgroundColor:
                      getFigmaColor(isSelected ? "F97316" : "babbbe"),
                ),
              ],
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(
                  child: content, radius: 20, spreadRadius: 3)
              : content;
        },
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Find Fitness Coach",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoachHomePage extends StatefulWidget {
  const CoachHomePage({super.key});

  @override
  State<CoachHomePage> createState() => _CoachHomePageState();
}

class _CoachHomePageState extends State<CoachHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildTopBar(context),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FancyContainer(
                        radius: 15,
                        isContinousBorder: false,
                        backgroundColor: getFigmaColor("f3f3f4"),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search fitness coach...",
                                    hintStyle:
                                        GoogleFonts.workSans(fontSize: 13),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              FancyContainer(
                                radius: 30,
                                height: 20,
                                width: 20,
                                isContinousBorder: false,
                                // hasBorder: true,
                                // borderColor: getFigmaColor("BABBBE"),
                                child: Image.asset(
                                    "assets/images/boxLikeSearchIcon.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildroboSection(),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FancyText(
                            "Browse Coaches",
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          FancyText(
                            "See All",
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: getFigmaColor("F97316")),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.filled(
                            4,
                            SizedBox(
                              height: 200,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: AspectRatio(
                                  aspectRatio: 250 / 290,
                                  child: FancyContainer(
                                    backgroundColor: getFigmaColor("f3f3f4"),
                                    radius: 60,
                                    child: Stack(
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          child: SizedBox(
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .2,
                                                ),
                                                Image.asset(
                                                    "assets/images/maleCommentatorImage-transparentBG.png",
                                                    height: 200,
                                                    width: 350,
                                                    // scale: 1.35,
                                                    fit: BoxFit.contain,
                                                    alignment: Alignment.topLeft
                                                    // Alignment(1, 0),
                                                    ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Align(
                                        //   alignment: Alignment(1, 1),
                                        //   child: SingleChildScrollView(
                                        //     physics: NeverScrollableScrollPhysics(),
                                        //     child: ,
                                        //   ),
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FancyContainer(
                                                // height: 25,
                                                // width: 30,
                                                nulledAlign: true,

                                                radius: 10,
                                                isContinousBorder: false,
                                                backgroundColor:
                                                    getFigmaColor("111214", 32),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: FancyText("Human",
                                                      textAlign:
                                                          TextAlign.center,
                                                      rawTextStyle:
                                                          GoogleFonts.workSans(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .white)),
                                                ),
                                              ),
                                              Spacer(),
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    FancyText(
                                                      "Zuckman D. Wu",
                                                      textAlign:
                                                          TextAlign.center,
                                                      rawTextStyle:
                                                          GoogleFonts.workSans(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600,

                                                        // weight: FontWeight.bold,
                                                        //   size: 24,
                                                      ),
                                                    ),
                                                    _buildImageIconRepea2(),
                                                  ]),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  AspectRatio _buildroboSection() {
    return AspectRatio(
      aspectRatio: 340 / 248,
      child: FancyContainer(
        backgroundColor: Colors.black,
        radius: 60,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(1, 1),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Image.asset(
                  "assets/images/roboDrago.png",
                  height: 200,
                  width: 200,
                  // scale: 1.35,
                  fit: BoxFit.contain,
                  alignment: Alignment(1, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _buildImageIconRepeat(),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FancyText(
                        "Coach Of The Day",
                        textAlign: TextAlign.center,
                        rawTextStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: getFigmaColor("D7D8D9")
                            // weight: FontWeight.bold,
                            //   size: 24,
                            ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          FancyText("X-II-AE-12",
                              textAlign: TextAlign.center,
                              rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(width: 10),
                          FancyContainer(
                            height: 25,
                            width: 30,
                            radius: 10,
                            isContinousBorder: false,
                            backgroundColor: getFigmaColor("ffffff", 32),
                            child: FancyText("AI",
                                textAlign: TextAlign.center,
                                rawTextStyle: GoogleFonts.workSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          Spacer(),
                          FancyContainer(
                            height: 45,
                            width: 45,
                            radius: 15,
                            isContinousBorder: false,
                            backgroundColor: getFigmaColor("F97316"),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Transform.rotate(
                                angle: pi * 3 / 4,
                                child: buildTailedAppArrow(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildImageIconRepeat() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-star.png")),
        const SizedBox(width: 5),
        FancyText(
          "2.8",
          weight: FontWeight.w500,
          size: 14,
          textColor: Colors.white,
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: getFigmaColor("393C43"),
        ),
        const SizedBox(width: 5),
        SizedBox(
            height: 15,
            width: 15,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-person.png")),
        const SizedBox(width: 5),
        FancyText(
          "87 Clients",
          weight: FontWeight.w500,
          size: 14,
          textColor: Colors.white,
        ),
      ],
    );
  }

  Row _buildImageIconRepea2() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-star.png")),
        const SizedBox(width: 5),
        FancyText(
          "2.8",
          weight: FontWeight.w500,
          size: 10,
          // textColor: Colors.white,
        ),
        const SizedBox(width: 5),
        FancyContainer(
          height: 5,
          width: 5,

          // isContinousBorder: false,
          backgroundColor: getFigmaColor("babbbe"),
        ),
        const SizedBox(width: 5),
        SizedBox(
            height: 10,
            width: 10,
            child:
                Image.asset("assets/images/coachSelectionPageIcon-person.png")),
        const SizedBox(width: 5),
        FancyText(
          "87 Clients",
          weight: FontWeight.w500,
          size: 10,
          // textColor: Colors.white,
        ),
      ],
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        // height: 50,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FancyContainer(
                radius: 30,
                height: 30,
                width: 30,
                isContinousBorder: false,
                hasBorder: true,
                borderColor: getFigmaColor("BABBBE"),
                child: Image.asset("assets/images/maleCommentatorImage.png"),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      FancyText(
                        "Ready for training 🏋️‍♀️",
                        textAlign: TextAlign.center,
                        rawTextStyle: GoogleFonts.workSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: getFigmaColor("736B66")
                            // weight: FontWeight.bold,
                            //   size: 24,
                            ),
                      ),

                      SizedBox(
                        child: FancyText("Coach Spike Brown",
                            textAlign: TextAlign.center,
                            rawTextStyle: GoogleFonts.workSans(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              // weight: FontWeight.bold,
                              //   size: 24,
                            )),
                      ),
                      // Row(
                      //   children: [
                      //     FancyText(
                      //       "Human Coach",
                      //       textAlign: TextAlign.center,
                      //       rawTextStyle: GoogleFonts.workSans(
                      //           fontSize: 10,
                      //           fontWeight: FontWeight.w400,
                      //           color: getFigmaColor("736B66")
                      //           // weight: FontWeight.bold,
                      //           //   size: 24,
                      //           ),
                      //     ),
                      //     const SizedBox(width: 5),
                      //     FancyContainer(
                      //       height: 5,
                      //       width: 5,
                      //       backgroundColor: getFigmaColor("f3f3f4"),
                      //     ),
                      //     const SizedBox(width: 5),
                      //     FancyText(
                      //       "Certified",
                      //       textAlign: TextAlign.center,
                      //       rawTextStyle: GoogleFonts.workSans(
                      //           fontSize: 10,
                      //           fontWeight: FontWeight.w400,
                      //           color: getFigmaColor("736B66")
                      //           // weight: FontWeight.bold,
                      //           //   size: 24,
                      //           ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              FancyContainer(
                height: 45,
                width: 45,
                radius: 20,
                borderColor: Colors.grey[300],
                hasBorder: true,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.notifications_rounded,
                          weight: .2,
                          size: 30,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: FancyContainer(
                          height: 15,
                          width: 15,
                          radius: 5,
                          hasBorder: true,
                          borderColor: Colors.white,
                          isContinousBorder: false,
                          borderThickness: 2,
                          backgroundColor: Colors.red,
                          child: FancyText(
                            "8",
                            size: 10,
                            textColor: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
