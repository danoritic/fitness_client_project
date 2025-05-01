import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class AiCoachChatPage17 extends StatefulWidget {
  const AiCoachChatPage17({super.key});

  @override
  State<AiCoachChatPage17> createState() => _AiCoachChatPage17State();
}

class _AiCoachChatPage17State extends State<AiCoachChatPage17> {
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
                "Please wait while we’re generating a personalized workout & coach for you... ⏳",
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
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: FancyContainer(
                  //     backgroundColor: Colors.black,
                  //     // height: 40,
                  //     // nulledAlign: true,
                  //     isContinousBorder: false,
                  //     radius: 15,
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 12.0,
                  //         vertical: 12.0,
                  //       ),
                  //       child: Row(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: [
                  //           FancyText(
                  //             "Continue",
                  //             // size: 16,
                  //             // textColor:usedAppColor.white,
                  //             rawTextStyle: GoogleFonts.workSans(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w600,
                  //               color:usedAppColor.white,
                  //             ),
                  //           ),
                  //           const SizedBox(width: 7),
                  //           SizedBox(
                  //               width: 20,
                  //               child: buildTailedAppArrow(isLeft: false)),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
