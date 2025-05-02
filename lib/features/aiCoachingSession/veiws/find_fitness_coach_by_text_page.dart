import 'dart:math';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FindFitnessCoachByTextPage extends StatefulWidget {
  const FindFitnessCoachByTextPage({super.key});

  @override
  State<FindFitnessCoachByTextPage> createState() =>
      _FindFitnessCoachByTextPageState();
}

class _FindFitnessCoachByTextPageState
    extends State<FindFitnessCoachByTextPage> {
  String tabName = "Near You";
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
        backgroundColor: usedAppColor.white,
        body: Column(
          children: [
            _buildTopBar(context),
            _buildNearyouMapSearchSelector(),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                // left: 10,
                // right: 10,
              ),
              child: FancyContainer(
                radius: 15,
                backgroundColor: getFigmaColor("FFEDD5"),
                isContinousBorder: false,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: FancyContainer(
                    height: 45,
                    radius: 15,
                    isContinousBorder: false,
                    backgroundColor: usedAppColor.f3f3f4,
                    hasBorder: true,
                    borderColor: getFigmaColor("F97316"),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 15,
                              width: 15,
                              child: Image.asset(
                                  "assets/images/boxLikeSearchIcon.png")),
                          SizedBox(
                            height: 15,
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Coach Farnese",
                                hintStyle: GoogleFonts.workSans(
                                  color: getFigmaColor("393C43"),
                                ),
                              ),
                            ),
                          ),

                          // FancyText(
                          //   "Move map to discover fitness coach.",
                          //   weight: FontWeight.w700,
                          //   size: 12,
                          //   // textColor: usedAppColor.Color676C75,
                          // ),
                          // Spacer(),
                          Transform.rotate(
                              angle: pi * 90 / 180,
                              child: const Icon(Icons.tune_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FancyText(
                  "1 Results Found.",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                FancyText(
                  "Most Popular",
                  rawTextStyle: GoogleFonts.workSans(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: usedAppColor.Color676C75),
                ),
                const SizedBox(width: 5),
                SizedBox(
                    height: 15,
                    child: Image.asset("assets/images/wifiLike_logo.png")),
              ],
            ),
            Column(
              children: List.filled(
                  3,
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: _buildItem(),
                  )),
            )
          ],
        ));
  }

  FancyContainer _buildItem() {
    return FancyContainer(
      height: 85,
      radius: 40,
      nulledAlign: true,
      backgroundColor: usedAppColor.f3f3f4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: FancyContainer(
                radius: 40,
                backgroundColor: Colors.red,
                child: Image.asset(
                  "assets/images/sttretchingWoman.png",
                  // width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      FancyContainer(
                        isContinousBorder: false,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: FancyText(
                            "Human",
                            weight: FontWeight.w900,
                            size: 8,
                          ),
                        ),
                        backgroundColor: usedAppColor.D7D8D9,
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FancyText(
                      "Zen Flow Yoga",
                      weight: FontWeight.bold,
                      size: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: getFigmaColor("F97316"),
                        size: 12,
                      ),
                      const SizedBox(width: 5),
                      FancyText(
                        "1.8",
                        weight: FontWeight.w500,
                        size: 14,
                        textColor: usedAppColor.Color676C75,
                      ),
                      const SizedBox(width: 5),
                      FancyContainer(
                        height: 5,
                        width: 5,

                        // isContinousBorder: false,
                        backgroundColor: usedAppColor.D7D8D9,
                      ),
                      const SizedBox(width: 5),
                      SizedBox(
                        height: 12,
                        child: Image.asset(
                            "assets/images/insightIcon-dumbell.png"),
                      ),
                      // Icon(
                      //   Icons.timer,
                      //   color: getFigmaColor("9EA0A5"),
                      //   size: 12,
                      // ),
                      const SizedBox(width: 5),
                      FancyText(
                        "Strength",
                        weight: FontWeight.w500,
                        size: 14,
                        textColor: usedAppColor.Color676C75,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15, width: 15, child: buildAppArrow(isLeft: false))
          ],
        ),
      ),
    );
  }

  FancyContainer _buildNearyouMapSearchSelector() {
    return FancyContainer(
      height: 45,
      // width: 30,
      radius: 10,
      isContinousBorder: false,
      action: () {
        print("sassasasas");
      },
      backgroundColor: usedAppColor.f3f3f4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            "Near You",
            "Map",
            "Search",
          ].map(
            (e) {
              bool isSelected = tabName == e;
              return Expanded(
                child: FancyContainer(
                  height: 45,
                  // width: 30,
                  radius: 10,
                  isContinousBorder: false,
                  action: () {
                    tabName = e;
                    setState(() {});
                  },
                  backgroundColor: isSelected ? usedAppColor.white : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: FancyText(
                      e,
                      weight: FontWeight.w700,
                      textColor: isSelected
                          ? usedAppColor.black
                          : usedAppColor.Color676C75,
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor:usedAppColor.white,
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
              FancyContainer(
                height: 30,
                width: 30,
                radius: 20,
                backgroundColor: usedAppColor.f3f3f4,
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.settings_outlined,
                    weight: .2,
                    size: 20,
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
