import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachChatLastPage extends StatefulWidget {
  const AiCoachChatLastPage({super.key});

  @override
  State<AiCoachChatLastPage> createState() => _AiCoachChatLastPageState();
}

class _AiCoachChatLastPageState extends State<AiCoachChatLastPage> {
  String? menuValue;
  bool selectedItemIsVisible = true;
  TextEditingController textEditingController = TextEditingController();

  Color selectRandomColor() {
    List<Color> colors = [
      getFigmaColor("84CC16"),
      getFigmaColor("9333EA"),
      getFigmaColor("2563EB"),
    ];
    return colors[Random().nextInt(colors.length - 1)];
  }

  List<String> selectibles = [
    "Strength Training",
    "Cardio",
    "HIIT",
    "Pilates",
    "Sports",
    "Core Abs",
    "None Of Above",
  ];
  List<String> selecteds = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: usedAppColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              const SizedBox(height: 20),
              FancyText(
                "And here are some of our coach suggestion that based on your fitness level! 🏐",
              ),
              const Spacer(),
              Column(
                children: [
                  Column(
                      children: List.filled(
                    2,
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: _buildItem(),
                    ),
                  )),
                  FancyText(
                    "See All Workouts",
                    // size: 16,
                    // textColor:usedAppColor.white,
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: getFigmaColor("F97316"),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: const Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: getFigmaColor("F3F3F4"),
                              borderRadius: BorderRadius.circular(20))),
                      alignment: Alignment.topCenter,
                      menuItemStyleData: MenuItemStyleData(
                        selectedMenuItemBuilder: (context, child) {
                          return FancyContainer(
                            // height: 30,
                            backgroundColor: usedAppColor.white,
                            child: child,
                          );
                        },
                      ),
                      customButton: FancyContainer(
                        radius: 20,
                        backgroundColor: getFigmaColor("F3F3F4"),
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/menuGrid.png"),
                        ),
                      ),
                      items: [
                        "Home",
                        "End Session",
                        "Browse Workout",
                        "Browse Coach",
                        "Session History",
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              child: FancyText(
                                "${e}",
                                size: 13,
                              ),
                              value: "${e}",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        menuValue = value;
                        setState(() {});
                      },
                      value: menuValue,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: Colors.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Complete",
                              // size: 16,
                              // textColor:usedAppColor.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: usedAppColor.white,
                              ),
                            ),
                            const SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: Icon(
                                  Icons.check_rounded,
                                  color: usedAppColor.white,
                                )
                                // buildTailedAppArrow(isLeft: false),
                                ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  FancyContainer _buildItem() {
    return FancyContainer(
      height: 85,
      radius: 40,
      nulledAlign: true,
      backgroundColor: getFigmaColor("F3F3F4"),
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
                        backgroundColor: getFigmaColor("D7D8D9"),
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
                        textColor: getFigmaColor("676C75"),
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
}
