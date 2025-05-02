import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachChatPage13And16 extends StatefulWidget {
  const AiCoachChatPage13And16({super.key});

  @override
  State<AiCoachChatPage13And16> createState() => _AiCoachChatPage13And16State();
}

class _AiCoachChatPage13And16State extends State<AiCoachChatPage13And16> {
  String? menuValue;
  bool hasImage = true;

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
                "What kind of workout do you usually enjoy?",
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
                  hasImage
                      ? Column(
                          children: [
                            FancyContainer(
                              action: () {
                                hasImage = !hasImage;
                                setState(() {});
                              },
                              radius: 30,
                              hasBorder: true,
                              borderColor: getFigmaColor("BABBBE"),
                              width: 180,
                              child: AspectRatio(
                                aspectRatio: 180 / 277,
                                child: Image.asset(
                                  "assets/images/strongRunningHuman.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            FancyText(
                              "image.jpg",
                            ),
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: FancyContainer(
                            backgroundColor: usedAppColor.black,
                            action: () {
                              hasImage = !hasImage;
                              setState(() {});
                            },
                            isContinousBorder: false,
                            radius: 15,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12.0,
                                vertical: 12.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FancyText(
                                    "Upload/Scan",
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
                                        Icons.camera_alt_outlined,
                                        color: usedAppColor.white,
                                      )
                                      // buildTailedAppArrow(isLeft: false)
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
}
