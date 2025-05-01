import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AiCoachChatPage2 extends StatefulWidget {
  const AiCoachChatPage2({super.key});

  @override
  State<AiCoachChatPage2> createState() => _AiCoachChatPage2State();
}

class _AiCoachChatPage2State extends State<AiCoachChatPage2> {
  String? menuValue;
  String? selectedBodyPart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: usedAppColor.Colors.white,
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
                "Hey, Makise! I’m Coach Sandow AI, and I’ll help you get fit with a personalized fitness plan. Are you ready?",
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
                            backgroundColor: usedAppColor.Colors.white,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      "Leg",
                      "Arm",
                      "Shoulder",
                      "Bicep",
                      "Browse",
                    ]
                        .map(
                          (e) => buildLeftButtons(e),
                        )
                        .toList(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildLeftButtons(String text) {
    bool isSelected = selectedBodyPart == text;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FancyContainer(
        action: () {
          selectedBodyPart = text;
          setState(() {});
        },
        backgroundColor: isSelected ? Colors.black : getFigmaColor("F3F3F4"),
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
                text,
                rawTextStyle: GoogleFonts.workSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? usedAppColor.Colors.white : Colors.black,
                ),
              ),
              const SizedBox(width: 7),
              SizedBox(
                width: 20,
                child: buildTailedAppArrow(
                  isLeft: false,
                  iconColor: isSelected ? null : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
