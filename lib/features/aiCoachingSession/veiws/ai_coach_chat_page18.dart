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

class AiCoachChatPage18 extends StatefulWidget {
  AiCoachChatPage18({super.key});

  @override
  State<AiCoachChatPage18> createState() => _AiCoachChatPage18State();
}

class _AiCoachChatPage18State extends State<AiCoachChatPage18> {
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
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: Image.asset("assets/images/Union_icon.png"),
                ),
              ),
              SizedBox(height: 20),
              FancyText(
                "Please wait while we’re generating a personalized workout & coach for you... ⏳",
              ),
              Spacer(),
              Column(
                children: [
                  Column(
                      children: List.filled(
                    2,
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: _buildItem(),
                    ),
                  )),
                  FancyText(
                    "See All Workouts",
                    rawTextStyle: GoogleFonts.workSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: getFigmaColor("F97316"),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      dropdownStyleData: DropdownStyleData(
                          // padding: EdgeInsets.only(bottom: 40),

                          width: 150,
                          maxHeight: 200,
                          offset: Offset(-50, 0),
                          decoration: BoxDecoration(
                              color: usedAppColor.f3f3f4,
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
                        backgroundColor: usedAppColor.f3f3f4,
                        height: 40,
                        width: 40,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
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
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FancyContainer(
                      backgroundColor: usedAppColor.black,
                      // height: 40,
                      // nulledAlign: true,
                      isContinousBorder: false,
                      radius: 15,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FancyText(
                              "Continue",
                              // size: 16,
                              // textColor:usedAppColor.white,
                              rawTextStyle: GoogleFonts.workSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: usedAppColor.white,
                              ),
                            ),
                            SizedBox(width: 7),
                            SizedBox(
                                width: 20,
                                child: buildTailedAppArrow(isLeft: false)),
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
      height: 80,
      radius: 40,
      backgroundColor: usedAppColor.f3f3f4,
      child: Padding(
        padding: EdgeInsets.all(8.0),
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
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      FancyText(
                        "Zen Flow Yoga",
                        weight: FontWeight.bold,
                        size: 16,
                      ),
                      SizedBox(width: 10),
                      FancyContainer(
                        isContinousBorder: false,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: FancyText(
                            "Yoga",
                            weight: FontWeight.bold,
                            size: 12,
                          ),
                        ),
                        backgroundColor: usedAppColor.D7D8D9,
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  LinearProgressIndicator(
                    value: .5,
                    color: usedAppColor.black,
                    backgroundColor: usedAppColor.D7D8D9,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.description,
                        color: usedAppColor.Color9EA0A5,
                        size: 12,
                      ),
                      FancyText(
                        "25 Movements",
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                      FancyContainer(
                        height: 10,
                        width: 10,

                        // isContinousBorder: false,
                        backgroundColor: usedAppColor.D7D8D9,
                      ),
                      Icon(
                        Icons.timer,
                        color: usedAppColor.Color9EA0A5,
                        size: 12,
                      ),
                      FancyText(
                        "0%",
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
