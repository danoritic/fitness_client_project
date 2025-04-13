import 'dart:math';

import 'package:fitness_client_project/features/Sandow/widgets/score_card.dart';
import 'package:fitness_client_project/features/homepage/veiws/sandow_score.dart';
import 'package:fitness_client_project/utils/customs/customs.dart';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SandowScoreDetail extends StatefulWidget {
  const SandowScoreDetail({super.key});

  @override
  State<SandowScoreDetail> createState() => _SandowScoreDetailState();
}

class _SandowScoreDetailState extends State<SandowScoreDetail> {
  List<Map> insightItemDetail = [
    {
      "icon": "assets/images/insightIcon-BrainLove.png",
      "times": "2.4X",
      "duration": "last week",
      "name": "Healthier",
      "isDecreased": true,
      "percent": 1.2
    },
    {
      "icon": "assets/images/insightIcon-bucket.png",
      "times": "2.4X",
      "duration": "last week",
      "isDecreased": false,
      "name": "More Exercise",
      "percent": 1.2
    },
    {
      "icon": "assets/images/insightIcon-dumbell.png",
      "times": "2.4X",
      "duration": "last week",
      "isDecreased": true,
      "name": "More Hydrated",
      "percent": 1.2
    },
    {
      "icon": "assets/images/insightIcon-runPerson.png",
      "times": "2.4X",
      "duration": "last week",
      "isDecreased": false,
      "name": "Muscle gained",
      "percent": 1.2
    },
  ];

  // assets/images/insightIcon-bucket.png
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: buildBackArrow(context),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FancyText(
              "Sandow Score History",
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        //  Colors.grey[300],

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 340 / 540,
                  child: _buildFirstSection(),
                ),
                SizedBox(height: 20),
                _buildSecondSection(),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FancyText(
                        "Insights",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 16.w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 160 / 110,
                        ),
                        itemCount: insightItemDetail.length,
                        itemBuilder: (context, index) {
                          Map detail = insightItemDetail[index];
                          return Padding(
                            padding: EdgeInsets.all(8.0.w),
                            child: FancyContainer(
                              radius: 30,
                              backgroundColor: getFigmaColor("F3F3F4"),
                              child: Padding(
                                padding: EdgeInsets.all(8.0.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                            height: 25,
                                            width: 25,
                                            child: Image.asset(detail["icon"])),
                                        FancyText(
                                          detail["times"],
                                          rawTextStyle: GoogleFonts.workSans(
                                            fontSize: 25.w,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    FancyText(
                                      "${detail["name"]}",
                                      rawTextStyle: GoogleFonts.workSans(
                                        fontSize: 14.w,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                      child: Builder(builder: (context) {
                                        bool isDecreased =
                                            detail["isDecreased"];
                                        String percent =
                                            ((!isDecreased) ? "+" : "-") +
                                                "${detail["percent"]}" +
                                                "%";
                                        return Row(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                              width: 10,
                                              child: Image.asset(
                                                isDecreased
                                                    ? "assets/images/trendDownIcon.png"
                                                    : "assets/images/trendUpIcon.png",
                                              ),
                                            ),
                                            SizedBox(width: 2),
                                            FancyText(
                                              "${percent}",
                                              rawTextStyle:
                                                  GoogleFonts.workSans(
                                                      fontSize: 10.w,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: isDecreased
                                                          ? getFigmaColor(
                                                              "EF4444")
                                                          : getFigmaColor(
                                                              "84CC16")),
                                            ),
                                            SizedBox(width: 2),
                                            FancyText(
                                              "VS ${detail['duration']}",
                                              rawTextStyle:
                                                  GoogleFonts.workSans(
                                                      fontSize: 10.w,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: getFigmaColor(
                                                          "676C75")),
                                            ),
                                          ],
                                        );
                                      }),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FancyText(
                        "Insights",
                        rawTextStyle: GoogleFonts.workSans(
                          fontSize: 16.w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/fitnessMetrics.png",
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                )
              ],
            ),
          ),
        )
        //  Center(
        //   child: InkWell(
        //     onTap: () {},
        //     child: Image.asset(
        //       "assets/images/sandowScore.png",
        //       fit: BoxFit.fitWidth,
        //       alignment: Alignment.topCenter,
        //       width: double.infinity,
        //     ),
        //   ),
        // ),
        );
  }

  Column _buildSecondSection() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: FancyText(
            "Analysis",
            rawTextStyle: GoogleFonts.workSans(
              fontSize: 16.w,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        _buildStrip(getFigmaColor("F97316"), "Analysis", 85),
        _buildStrip(getFigmaColor("2563EB"), "Energy", 85),
        _buildStrip(getFigmaColor("EF4444"), "Agility", 85),
        _buildStrip(getFigmaColor("9333EA"), "Balance", 85),
        _buildStrip(getFigmaColor("FACC15"), "Stress Level", 85),
      ],
    );
  }

  Widget _buildStrip(Color dotColor, String label, int rate) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: AspectRatio(
        aspectRatio: 343 / 46,
        child: FancyContainer(
          width: double.infinity,
          isContinousBorder: false,
          backgroundColor: getFigmaColor("F3F3F4"),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FancyContainer(
                    height: 20, width: 20, radius: 15, backgroundColor: dotColor
                    // getFigmaColor("2563EB"),
                    ),
                SizedBox(width: 10),
                FancyText(
                  "$label",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 16.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                FancyText(
                  "$rate ",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 16.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FancyText(
                  "/ 100",
                  rawTextStyle: GoogleFonts.workSans(
                      fontSize: 16.w,
                      fontWeight: FontWeight.bold,
                      color: getFigmaColor("9EA0A5")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  FancyContainer _buildFirstSection() {
    return FancyContainer(
      isContinousBorder: false,
      radius: 10,
      backgroundColor: getFigmaColor("F3F3F4"),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(height: 20, child: buildAppArrow()),
                Expanded(
                    child: Center(
                        child: FancyText(
                  "Jan 12, 2028",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 20.w,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
                SizedBox(height: 20, child: buildAppArrow(isLeft: false)),
              ],
            ),
            FancyContainer(
              height: 250.w,
              width: 250.w,
              child: Stack(
                children: [
                  Center(
                    child: Transform.rotate(
                      angle: pi * 235 / 180,
                      child: SizedBox(
                        height: 190.w,
                        width: 190.w,
                        child: CircularProgressIndicator(
                          value: .70,
                          strokeWidth: 40,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Transform.rotate(
                      angle: pi * 235 / 180,
                      child: SizedBox(
                        height: 190.w,
                        width: 190.w,
                        child: CircularProgressIndicator(
                          value: .50,
                          strokeWidth: 40,
                          color: getFigmaColor("2563EB"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset(
                      "assets/images/centerMarkOfRatingArk.png",
                      // color: Colors.red,
                    ),
                  ),
                  Center(
                      child: FancyContainer(
                    isContinousBorder: false,
                    nulledAlign: true,
                    height: 100.w,
                    width: 100.w,
                    radius: 700,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FancyText(
                            "81",
                            rawTextStyle: GoogleFonts.urbanist(
                              fontSize: 30.w,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          FancyText(
                            "out of 100",
                            rawTextStyle: GoogleFonts.workSans(
                                fontSize: 8.w,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
            FancyText(
              "Keep going, Makise!",
              rawTextStyle: GoogleFonts.urbanist(
                fontSize: 20.w,
                fontWeight: FontWeight.w800,
              ),
            ),
            FancyText(
              "Log your activity and other fitness metrics to get a new score.",
              textAlign: TextAlign.center,
              rawTextStyle: GoogleFonts.workSans(
                fontSize: 20.w,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
              ),
            ),
            Divider(),
            FancyContainer(
              radius: 15,
              height: 40,
              isContinousBorder: false,
              backgroundColor: Colors.black,
              child: FancyText(
                "See AI Recommendations",
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
